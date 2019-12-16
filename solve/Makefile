JGEN = ./build_job.py
SECS = 1800
GB = 64

m14: $(JGEN)
	$(JGEN) -t $(SECS) -g $(GB) 5 14
	$(JGEN) -t $(SECS) -g $(GB) 6 14
	$(JGEN) -t $(SECS) -g $(GB) 7 14
	$(JGEN) -t $(SECS) -g $(GB) 8 14
	$(JGEN) -t $(SECS) -g $(GB) 9 14
	$(JGEN) -t $(SECS) -g $(GB) 10 14
	$(JGEN) -t $(SECS) -g $(GB) 11 14
	$(JGEN) -t $(SECS) -g $(GB) 12 14
	$(JGEN) -t $(SECS) -g $(GB) 13 14
	$(JGEN) -t $(SECS) -g $(GB) 15 14
	$(JGEN) -t $(SECS) -g $(GB) 16 14
	$(JGEN) -t $(SECS) -g $(GB) 17 14
	$(JGEN) -t $(SECS) -g $(GB) 18 14
	$(JGEN) -t $(SECS) -g $(GB) 19 14
	$(JGEN) -t $(SECS) -g $(GB) 20 14
	$(JGEN) -t $(SECS) -g $(GB) 21 14
	$(JGEN) -t $(SECS) -g $(GB) 22 14
	$(JGEN) -t $(SECS) -g $(GB) 23 14

submit:
	sbatch run-m14+05.job
	sbatch run-m14+06.job
	sbatch run-m14+07.job
	sbatch run-m14+08.job
	sbatch run-m14+09.job
	sbatch run-m14+10.job
	sbatch run-m14+11.job
	sbatch run-m14+12.job
	sbatch run-m14+13.job
	sbatch run-m15+14.job
	sbatch run-m16+14.job
	sbatch run-m17+14.job
	sbatch run-m18+14.job
	sbatch run-m19+14.job
	sbatch run-m20+14.job
	sbatch run-m21+14.job
	sbatch run-m22+14.job
	sbatch run-m23+14.job

clean:
	rm -f *~
	rm -f *.job


