.global get_cpu_vendor_id

get_cpu_vendor_id:
	movl $1, %eax
	cpuid
	ret
