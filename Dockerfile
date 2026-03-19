# clean base image containing only comfyui, comfy-cli and comfyui-manager
FROM runpod/worker-comfyui:5.5.1-base

# install custom nodes into comfyui (first node with --mode remote to fetch updated cache)
# Could not resolve unknown_registry node: VAEDecode (no aux_id) - skipped
# Could not resolve unknown_registry node: EmptyLatentImage (no aux_id) - skipped
# Could not resolve unknown_registry node: KSampler (no aux_id) - skipped
# Could not resolve unknown_registry node: SaveImage (no aux_id) - skipped
# Could not resolve unknown_registry node: LoadImage (no aux_id) - skipped
# Could not resolve unknown_registry node: IPAdapterUnifiedLoaderFaceID (no aux_id) - skipped
# Could not resolve unknown_registry node: CLIPTextEncode (no aux_id) - skipped
# Could not resolve unknown_registry node: CLIPTextEncode (no aux_id) - skipped
# Could not resolve unknown_registry node: CheckpointLoaderSimple (no aux_id) - skipped
# Could not resolve unknown_registry node: IPAdapterFaceID (no aux_id) - skipped

# download models into comfyui
RUN comfy model download --url https://huggingface.co/lllyasviel/fav_models/blob/main/fav/realisticVisionV51_v51VAE.safetensors --relative-path models/checkpoints --filename sd15/realisticVisionV51_v51VAE.safetensors
# COPY input/ /comfyui/input/
