 * Copyright (c) 1999-2009 Apple Inc.
	size_t hdrsize;
	struct auditinfo_addr ak;
	struct in6_addr *ap;
	audit_get_kinfo(&ak);
	hdrsize = 0;
	switch (ak.ai_termid.at_type) {
	case AU_IPv4:
		hdrsize = (ak.ai_termid.at_addr[0] == INADDR_ANY) ?
		    AUDIT_HEADER_SIZE : AUDIT_HEADER_EX_SIZE(&ak);
		break;
	case AU_IPv6:
		ap = (struct in6_addr *)&ak.ai_termid.at_addr[0];
		hdrsize = (IN6_IS_ADDR_UNSPECIFIED(ap)) ? AUDIT_HEADER_SIZE :
		    AUDIT_HEADER_EX_SIZE(&ak);
		break;
	default:
		panic("kau_close: invalid address family");
	}
	tot_rec_size = rec->len + hdrsize + AUDIT_TRAILER_SIZE;
	if (hdrsize != AUDIT_HEADER_SIZE)
		hdr = au_to_header32_ex_tm(tot_rec_size, event, 0, tm, &ak);
	else
		hdr = au_to_header32_tm(tot_rec_size, event, 0, tm);
#define	ATFD1_TOKENS(argnum) do {					\
	if (ARG_IS_VALID(kar, ARG_ATFD1)) {				\
		tok = au_to_arg32(argnum, "at fd 1", ar->ar_arg_atfd1);	\
		kau_write(rec, tok);					\
	}								\
} while (0)

#define	ATFD2_TOKENS(argnum) do {					\
	if (ARG_IS_VALID(kar, ARG_ATFD2)) {				\
		tok = au_to_arg32(argnum, "at fd 2", ar->ar_arg_atfd2);	\
		kau_write(rec, tok);					\
	}								\
} while (0)

	if (ARG_IS_VALID(kar, ARG_ATFD)) {				\
		tok = au_to_arg32(1, "at fd", ar->ar_arg_atfd);		\
		kau_write(rec, tok);					\
	}								\
#define	EXTATTR_TOKENS(namespace_argnum) do {				\
			tok = au_to_arg32((namespace_argnum),		\
			    "attrnamespace", ar->ar_arg_value);		\
/*
 * Not all pointer arguments to system calls are of interest, but in some
 * cases they reflect delegation of rights, such as mmap(2) followed by
 * minherit(2) before execve(2), so do the best we can.
 */
#define	ADDR_TOKEN(argnum, argname) do {				\
	if (ARG_IS_VALID(kar, ARG_ADDR)) {				\
		if (sizeof(void *) == sizeof(uint32_t))			\
			tok = au_to_arg32((argnum), (argname),		\
			    (uint32_t)(uintptr_t)ar->ar_arg_addr);	\
		else							\
			tok = au_to_arg64((argnum), (argname),		\
			    (uint64_t)(uintptr_t)ar->ar_arg_addr);	\
		kau_write(rec, tok);					\
	}								\
} while (0)


	tok = au_to_arg32(3, "length", ar->ar_arg_len);
	kau_write(rec, tok);
	case A_OLDSETPOLICY:
		if ((size_t)ar->ar_arg_len == sizeof(int64_t)) {
			tok = au_to_arg64(2, "policy",
			    ar->ar_arg_auditon.au_policy64);
			kau_write(rec, tok);
			break;
		}
		/* FALLTHROUGH */

		tok = au_to_arg32(2, "policy", ar->ar_arg_auditon.au_policy);
	case A_OLDSETQCTRL:
		if ((size_t)ar->ar_arg_len == sizeof(au_qctrl64_t)) {
			tok = au_to_arg64(2, "setqctrl:aq_hiwater",
			    ar->ar_arg_auditon.au_qctrl64.aq64_hiwater);
			kau_write(rec, tok);
			tok = au_to_arg64(2, "setqctrl:aq_lowater",
			    ar->ar_arg_auditon.au_qctrl64.aq64_lowater);
			kau_write(rec, tok);
			tok = au_to_arg64(2, "setqctrl:aq_bufsz",
			    ar->ar_arg_auditon.au_qctrl64.aq64_bufsz);
			kau_write(rec, tok);
			tok = au_to_arg64(2, "setqctrl:aq_delay",
			    ar->ar_arg_auditon.au_qctrl64.aq64_delay);
			kau_write(rec, tok);
			tok = au_to_arg64(2, "setqctrl:aq_minfree",
			    ar->ar_arg_auditon.au_qctrl64.aq64_minfree);
			kau_write(rec, tok);
			break;
		}
		/* FALLTHROUGH */

		tok = au_to_arg32(2, "setqctrl:aq_hiwater",
		tok = au_to_arg32(2, "setqctrl:aq_lowater",
		tok = au_to_arg32(2, "setqctrl:aq_bufsz",
		tok = au_to_arg32(2, "setqctrl:aq_delay",
		tok = au_to_arg32(2, "setqctrl:aq_minfree",
		tok = au_to_arg32(2, "setumask:as_success",
		tok = au_to_arg32(2, "setumask:as_failure",
		tok = au_to_arg32(2, "setsmask:as_success",
		tok = au_to_arg32(2, "setsmask:as_failure",
	case A_OLDSETCOND:
		if ((size_t)ar->ar_arg_len == sizeof(int64_t)) {
			tok = au_to_arg64(2, "setcond",
			    ar->ar_arg_auditon.au_cond64);
			kau_write(rec, tok);
			break;
		}
		/* FALLTHROUGH */

		tok = au_to_arg32(2, "setcond", ar->ar_arg_auditon.au_cond);
		kau_write(rec, tok);
		tok = au_to_arg32(2, "setclass:ec_class",
			tok = au_to_arg32(1, "domain",
			tok = au_to_arg32(2, "type",
			tok = au_to_arg32(3, "protocol",
	case AUE_POSIX_OPENPT:
	case AUE_FSTATAT:
	case AUE_FUTIMESAT:
	case AUE_LPATHCONF:
	case AUE_UNLINKAT:
		ATFD1_TOKENS(1);
	case AUE_ACCESS:
	case AUE_EACCESS:
		UPATH1_VNODE1_TOKENS;
		if (ARG_IS_VALID(kar, ARG_VALUE)) {
			tok = au_to_arg32(2, "mode", ar->ar_arg_value);
			kau_write(rec, tok);
		}
		break;

	case AUE_FCHMODAT:
		ATFD1_TOKENS(1);
		if (ARG_IS_VALID(kar, ARG_MODE)) {
			tok = au_to_arg32(3, "new file mode",
			    ar->ar_arg_mode);
			kau_write(rec, tok);
		}
		UPATH1_VNODE1_TOKENS;
		break;

	case AUE_FCHOWNAT:
		ATFD1_TOKENS(1);
		if (ARG_IS_VALID(kar, ARG_UID)) {
			tok = au_to_arg32(3, "new file uid", ar->ar_arg_uid);
			kau_write(rec, tok);
		}
		if (ARG_IS_VALID(kar, ARG_GID)) {
			tok = au_to_arg32(4, "new file gid", ar->ar_arg_gid);
			kau_write(rec, tok);
		}
		UPATH1_VNODE1_TOKENS;
		break;

			tok = au_to_arg32(1, "fd", ar->ar_arg_fd);
	case AUE_CLOSEFROM:
		if (ARG_IS_VALID(kar, ARG_FD)) {
			tok = au_to_arg32(1, "fd", ar->ar_arg_fd);
			kau_write(rec, tok);
		}
		break;

			tok = au_to_arg32(1, "signal", ar->ar_arg_signum);
		EXTATTR_TOKENS(4);
		EXTATTR_TOKENS(2);
		EXTATTR_TOKENS(2);
	case AUE_FEXECVE:
		if (ARG_IS_VALID(kar, ARG_FD)) {
			tok = au_to_arg32(1, "fd", ar->ar_arg_fd);
			kau_write(rec, tok);
		}
		/* FALLTHROUGH */

	case AUE_LSEEK:
		if (ARG_IS_VALID(kar, ARG_CMD)) {
			tok = au_to_arg32(2, "cmd",
			    au_fcntl_cmd_to_bsm(ar->ar_arg_cmd));
			kau_write(rec, tok);
		}
	case AUE_LINKAT:
	case AUE_RENAMEAT:
		ATFD1_TOKENS(1);
		ATFD2_TOKENS(3);
		ADDR_TOKEN(4, "base addr");
		ADDR_TOKEN(1, "addr");
	case AUE_NFS_SVC:
		if (ARG_IS_VALID(kar, ARG_CMD)) {
			tok = au_to_arg32(1, "flags", ar->ar_arg_cmd);
			kau_write(rec, tok);
		}
		break;

		if (ARG_IS_VALID(kar, ARG_VALUE)) {
			tok = au_to_arg32(2, "flags", ar->ar_arg_value);
			kau_write(rec, tok);
		}
		if (ARG_IS_VALID(kar, ARG_TEXT)) {
			tok = au_to_text(ar->ar_arg_text);
			kau_write(rec, tok);
		}
		ADDR_TOKEN(1, "base addr");
	case AUE_OPENAT_RC:
	case AUE_OPENAT_RTC:
	case AUE_OPENAT_RWC:
	case AUE_OPENAT_RWTC:
	case AUE_OPENAT_WC:
	case AUE_OPENAT_WTC:
		if (ARG_IS_VALID(kar, ARG_MODE)) {
			tok = au_to_arg32(3, "mode", ar->ar_arg_mode);
			kau_write(rec, tok);
		}
		/* FALLTHROUGH */

	case AUE_OPENAT_R:
	case AUE_OPENAT_RT:
	case AUE_OPENAT_RW:
	case AUE_OPENAT_RWT:
	case AUE_OPENAT_W:
	case AUE_OPENAT_WT:
		if (ARG_IS_VALID(kar, ARG_FFLAGS)) {
			tok = au_to_arg32(2, "flags", ar->ar_arg_fflags);
			kau_write(rec, tok);
		}
		ATFD1_TOKENS(1);
		UPATH1_VNODE1_TOKENS;
		break;

		if (ARG_IS_VALID(kar, ARG_GID)) {
			tok = au_to_arg32(3, "gid", ar->ar_arg_gid);
			kau_write(rec, tok);
		}
			tok = au_to_arg32(1, "egid", ar->ar_arg_egid);
			tok = au_to_arg32(1, "euid", ar->ar_arg_euid);
		PROCESS_PID_TOKENS(2);
			tok = au_to_arg32(3, "priority", ar->ar_arg_value);
		PROCESS_PID_TOKENS(1);
		if (ARG_IS_VALID(kar, ARG_VALUE)) {
			tok = au_to_arg32(3, "options", ar->ar_arg_value);
	tok = au_to_return32(au_errno_to_bsm(ar->ar_errno), ar->ar_retval);