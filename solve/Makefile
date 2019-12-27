JGEN = ./build_job.py
SECS = 3600
SGB = 120
LGB = 1024

small: m14-small

large: m14-large

m14-small: $(JGEN)
	$(JGEN) -t $(SECS) -g $(SGB) 5 14
	$(JGEN) -t $(SECS) -g $(SGB) 6 14
	$(JGEN) -t $(SECS) -g $(SGB) 7 14
	$(JGEN) -t $(SECS) -g $(SGB) 8 14
	$(JGEN) -t $(SECS) -g $(SGB) 9 14
	$(JGEN) -t $(SECS) -g $(SGB) 10 14
	$(JGEN) -t $(SECS) -g $(SGB) 11 14
	$(JGEN) -t $(SECS) -g $(SGB) 12 14
	$(JGEN) -t $(SECS) -g $(SGB) 13 14
	$(JGEN) -t $(SECS) -g $(SGB) 15 14
	$(JGEN) -t $(SECS) -g $(SGB) 16 14
	$(JGEN) -t $(SECS) -g $(SGB) 17 14
	$(JGEN) -t $(SECS) -g $(SGB) 18 14
	$(JGEN) -t $(SECS) -g $(SGB) 19 14
	$(JGEN) -t $(SECS) -g $(SGB) 20 14
	$(JGEN) -t $(SECS) -g $(SGB) 21 14
	$(JGEN) -t $(SECS) -g $(SGB) 22 14
	$(JGEN) -t $(SECS) -g $(SGB) 23 14

submit-small:
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

m14-large: $(JGEN)
	$(JGEN) -t $(SECS) -g $(LGB) 5 14
	$(JGEN) -t $(SECS) -g $(LGB) 6 14
	$(JGEN) -t $(SECS) -g $(LGB) 7 14
	$(JGEN) -t $(SECS) -g $(LGB) 8 14
	$(JGEN) -t $(SECS) -g $(LGB) 9 14
	$(JGEN) -t $(SECS) -g $(LGB) 10 14
	$(JGEN) -t $(SECS) -g $(LGB) 11 14
	$(JGEN) -t $(SECS) -g $(LGB) 12 14
	$(JGEN) -t $(SECS) -g $(LGB) 13 14
	$(JGEN) -t $(SECS) -g $(LGB) 15 14
	$(JGEN) -t $(SECS) -g $(LGB) 16 14
	$(JGEN) -t $(SECS) -g $(LGB) 17 14
	$(JGEN) -t $(SECS) -g $(LGB) 18 14
	$(JGEN) -t $(SECS) -g $(LGB) 19 14
	$(JGEN) -t $(SECS) -g $(LGB) 20 14
	$(JGEN) -t $(SECS) -g $(LGB) 21 14
	$(JGEN) -t $(SECS) -g $(LGB) 22 14
	$(JGEN) -t $(SECS) -g $(LGB) 23 14

submit-large:
#	sbatch -p LM --mem=$(LGB)GB run-m14+05.job
	sbatch -p LM --mem=$(LGB)GB run-m14+06.job
	sbatch -p LM --mem=$(LGB)GB run-m14+07.job
	sbatch -p LM --mem=$(LGB)GB run-m14+08.job
	sbatch -p LM --mem=$(LGB)GB run-m14+09.job
	sbatch -p LM --mem=$(LGB)GB run-m14+10.job
	sbatch -p LM --mem=$(LGB)GB run-m14+11.job
	sbatch -p LM --mem=$(LGB)GB run-m14+12.job
	sbatch -p LM --mem=$(LGB)GB run-m14+13.job
	sbatch -p LM --mem=$(LGB)GB run-m15+14.job
	sbatch -p LM --mem=$(LGB)GB run-m16+14.job
	sbatch -p LM --mem=$(LGB)GB run-m17+14.job
	sbatch -p LM --mem=$(LGB)GB run-m18+14.job
	sbatch -p LM --mem=$(LGB)GB run-m19+14.job
	sbatch -p LM --mem=$(LGB)GB run-m20+14.job
	sbatch -p LM --mem=$(LGB)GB run-m21+14.job
	sbatch -p LM --mem=$(LGB)GB run-m22+14.job
	sbatch -p LM --mem=$(LGB)GB run-m23+14.job

clean:
	rm -f *~
	rm -f *.job


