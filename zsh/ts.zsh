# clean finished
alias tsc='for GPU in 0 1 2 3; do TS_SOCKET=/tmp/felix_gpu_$GPU ts -C; done'
# display all queues
alias tss='for GPU in 0 1 2 3; do TS_SOCKET=/tmp/felix_gpu_$GPU ts; done'
# display all running/ququed/finished
alias tsr='for GPU in 0 1 2 3; do echo "gpu $GPU"; TS_SOCKET=/tmp/felix_gpu_$GPU ts | grep running; done'
alias tsq='for GPU in 0 1 2 3; do echo "gpu $GPU"; TS_SOCKET=/tmp/felix_gpu_$GPU ts | grep queued; done'
alias tsf='for GPU in 0 1 2 3; do echo "gpu $GPU"; TS_SOCKET=/tmp/felix_gpu_$GPU ts | grep finished; done'
# display queue by number
alias ts0='TS_SOCKET=/tmp/felix_gpu_0 ts'
alias ts1='TS_SOCKET=/tmp/felix_gpu_1 ts'
alias ts2='TS_SOCKET=/tmp/felix_gpu_2 ts'
alias ts3='TS_SOCKET=/tmp/felix_gpu_3 ts'

# kill according to substring
kill_ts () {
	for GPU in 0 1 2 3
	do
		echo "gpu $GPU"
		pids=($(TS_SOCKET=/tmp/felix_gpu_$GPU ts | grep $1 | cut -d' ' -f1))
		for pid in $pids
		do
			if [[ "$2" = "test" ]]
			then
				echo "TS_SOCKET=/tmp/felix_gpu_$GPU ts -r $pid"
			else
				TS_SOCKET=/tmp/felix_gpu_$GPU ts -r $pid
			fi
		done
	done
}

# display general running/queued/finished stats
function tsl() { 
	echo "running:  $(tss | grep running | tr -s " " | cut -c 1-10 | wc -l)" 
	echo "queued:   $(tss | grep queued | tr -s " " | cut -c 1-10 | wc -l)" 
	echo "finished: $(tss | grep finished | tr -s " " | cut -c 1-10 | wc -l)" 
}