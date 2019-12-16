JGEN = ./build_job.py
SECS = 1800

m14: $(JGEN)
	$(JGEN) 5 14 $(SECS)
	$(JGEN) 6 14 $(SECS)
	$(JGEN) 7 14 $(SECS)
	$(JGEN) 8 14 $(SECS)
	$(JGEN) 9 14 $(SECS)
	$(JGEN) 10 14 $(SECS)
	$(JGEN) 11 14 $(SECS)
	$(JGEN) 12 14 $(SECS)
	$(JGEN) 13 14 $(SECS)
	$(JGEN) 15 14 $(SECS)
	$(JGEN) 16 14 $(SECS)
	$(JGEN) 17 14 $(SECS)
	$(JGEN) 18 14 $(SECS)
	$(JGEN) 19 14 $(SECS)
	$(JGEN) 20 14 $(SECS)
	$(JGEN) 21 14 $(SECS)
	$(JGEN) 22 14 $(SECS)
	$(JGEN) 23 14 $(SECS)

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


