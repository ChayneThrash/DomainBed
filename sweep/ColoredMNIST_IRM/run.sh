dataset=ColoredMNIST_IRM
command=$1
launcher=$2
data_dir=$3

python -m domainbed.scripts.sweep ${command}\
       --datasets ${dataset}\
       --algorithms VRex_RSC\
       --data_dir ${data_dir}\
       --command_launcher ${launcher}\
       --fixed_test_envs 2\
       --steps 5001 \
       --holdout_fraction 0.1\
       --n_hparams 20\
       --n_trials 3\
       --skip_confirmation \
       --hparams "$(cat sweep/${dataset}/hparams.json)"\
       --output_dir "sweep/${dataset}/outputs"