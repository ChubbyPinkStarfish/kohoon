accelerate launch  --mixed_precision bf16 --num_cpu_threads_per_process 1 flux_train_network.py 
--pretrained_model_name_or_path flux1-dev.safetensors --clip_l sd3/clip_l.safetensors --t5xxl sd3/t5xxl_fp16.safetensors 
--ae ae.safetensors --cache_latents_to_disk --save_model_as safetensors --sdpa --persistent_data_loader_workers 
--max_data_loader_n_workers 2 --seed 42 --gradient_checkpointing --mixed_precision bf16 --save_precision bf16 
--network_module networks.lora_flux --network_dim 4 --network_train_unet_only 
--optimizer_type adamw8bit --learning_rate 1e-4 
--cache_text_encoder_outputs --cache_text_encoder_outputs_to_disk --fp8_base 
--highvram --max_train_epochs 4 --save_every_n_epochs 1 --dataset_config dataset_1024_bs2.toml 
--output_dir kaggle/working/kohoon/output --output_name flux-lora-name 
--timestep_sampling shift --discrete_flow_shift 3.1582 --model_prediction_type raw --guidance_scale 1.0 
