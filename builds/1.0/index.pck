GDPC                �                                                                      '   T   res://.godot/exported/133200997/export-8baf146757cc1be1d2ffd604b46cc46c-player.scn  �      �	      w���*�j��Iݗ�    T   res://.godot/exported/133200997/export-dc9d38bb73a719b6341f8164a6aba81a-map_1.scn           �      �.�����4��1o)�/$    ,   res://.godot/global_script_class_cache.cfg  p6             ��Р�8���8~$}P�    L   res://.godot/imported/hit_anim_f1.png-470415fa7647ef9720ebb95602a5e006.ctex `      �       gx�g�N]y8�A��    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex�'      �      �̛�*$q�*�́     L   res://.godot/imported/idle_anim_f1.png-ad463d57ab462aeb243836b98653e426.ctex       �       �Z}���W���*�    L   res://.godot/imported/idle_anim_f2.png-a45352f7776bd16459b59687de3262a5.ctex�      �       ��r���H4�+\�3    L   res://.godot/imported/idle_anim_f3.png-e3818f58aa95ce99258425fa8b173a83.ctex�      �       �Ը�B�``A��)`�#    L   res://.godot/imported/idle_anim_f4.png-ab11e99ef045eed9ac1485988ed31232.ctex`      �       �"�C�j��#�y��{D    H   res://.godot/imported/kinght.png-be8b5813652303b909df5a1a9d1e9fa4.ctex   &      �       �Z}���W���*�    L   res://.godot/imported/run_anim_f1.png-f089b40a9ca17844ee378d715d881928.ctex        �       K����( x�g�2�r    L   res://.godot/imported/run_anim_f2.png-d4ff8fd35275846afb69b8637bfc391f.ctex �      �       ���IlY�ZYIgӋu    L   res://.godot/imported/run_anim_f3.png-086096318a80aa1670905f405e82aba8.ctex �      �       pw(_�b���`�$    L   res://.godot/imported/run_anim_f4.png-37661c3832b03a5644f4ff47bca38250.ctex `      �       ��W��$�V��ƚ�9    P   res://.godot/imported/sleep_anim_f1.png-f5638d9289cae2e80d2ce764f0c6e857.ctex          �       �q��2WΖ��s�2��    P   res://.godot/imported/sleep_anim_f2.png-5c8ffe31f3c2a11c8c9497320a0664e0.ctex   �       �       �����㚫U]���?    P   res://.godot/imported/sleep_anim_f3.png-659b1357039ac7603449f25f9ce632e7.ctex   �"      �       �ż�5T�^��C[�6    P   res://.godot/imported/sleep_anim_f4.png-c464c987e39a7097eedd9ae9418e27d4.ctex   `$      �       �o2q=}V��\���       res://.godot/uid_cache.bin  P:      o      ������/2Ӽ����ڒ       res://icon.svg  �6      �      C��=U���^Qu��U3       res://icon.svg.import   �4      �       �XK���6�I�{0�       res://project.binary�>            ��~��淿 �����        res://src/maps/map_1.tscn.remap �5      b       �v��i�1I�x���A    $   res://src/scenes/player/player.gd   �      �      :�����喙O���    ,   res://src/scenes/player/player.tscn.remap    6      c       u�+��Z� |P�^�{��    <   res://src/sprites/heroes/knight/hit/hit_anim_f1.png.import  P      �       ��r�cA�ҩ�-���    <   res://src/sprites/heroes/knight/idle/idle_anim_f1.png.import      �       a#��&�XL�ǉ|{    <   res://src/sprites/heroes/knight/idle/idle_anim_f2.png.import�      �       4���-#e��~�:@�y    <   res://src/sprites/heroes/knight/idle/idle_anim_f3.png.import�      �       gϳ4�w�\X|2&3�    <   res://src/sprites/heroes/knight/idle/idle_anim_f4.png.importP      �       ��Ƞ��\1j��b|Q�    4   res://src/sprites/heroes/knight/kinght.png.import   '      �       Us
��;�Ĝr�    <   res://src/sprites/heroes/knight/run/run_anim_f1.png.import        �       C��N�Cw�Q����    <   res://src/sprites/heroes/knight/run/run_anim_f2.png.import  �      �       ��qT��;/7vO��    <   res://src/sprites/heroes/knight/run/run_anim_f3.png.import  �      �       qk[i�����gkR    <   res://src/sprites/heroes/knight/run/run_anim_f4.png.import  P      �       ��Y�Y�Lo>"I�%�    @   res://src/sprites/heroes/knight/sleep/sleep_anim_f1.png.import         �       ��8�j�.��F62:m�    @   res://src/sprites/heroes/knight/sleep/sleep_anim_f2.png.import  �!      �       �0n~U!��R�v���@    @   res://src/sprites/heroes/knight/sleep/sleep_anim_f3.png.import  �#      �       J�/i��C�e�I�&d    @   res://src/sprites/heroes/knight/sleep/sleep_anim_f4.png.import  P%      �       ���f�^\��`�Hq    RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       PackedScene $   res://src/scenes/player/player.tscn �d�*"
Q      local://PackedScene_nsic3           PackedScene          	         names "         map_1    Node2D    player 	   position    	   variants                 
     �C  _C      node_count             nodes        ��������       ����                ���                          conn_count              conns               node_paths              editable_instances              version             RSRCc\8=�9`extends CharacterBody2D


@onready var animation: AnimatedSprite2D = $"animation"

var speed = 300

func _physics_process(delta: float) -> void:
	self.move()
	self.animate()
	self.verify_direction()
	
func move() -> void:
	var direction: Vector2 = Vector2(
		Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
		Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	).normalized()
	
	self.velocity = direction * speed
	move_and_slide()
	
func animate() -> void:
	if self.velocity != Vector2.ZERO:
		self.animation.play("run")
	else:
		self.animation.play("idle")

func verify_direction() -> void:
	if self.velocity.x > 0:
		self.animation.flip_h = false
	if self.velocity.x < 0:
		self.animation.flip_h = true
�K�w�,�3fRSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script    animations 	   _bundled 	      Script "   res://src/scenes/player/player.gd ��������
   Texture2D 6   res://src/sprites/heroes/knight/idle/idle_anim_f1.png K@���^s
   Texture2D 6   res://src/sprites/heroes/knight/idle/idle_anim_f2.png ]���<p
   Texture2D 6   res://src/sprites/heroes/knight/idle/idle_anim_f3.png ²���(�
   Texture2D 6   res://src/sprites/heroes/knight/idle/idle_anim_f4.png ��3��>
   Texture2D 4   res://src/sprites/heroes/knight/run/run_anim_f1.png )5�s[�%
   Texture2D 4   res://src/sprites/heroes/knight/run/run_anim_f2.png  k�th�T0
   Texture2D 4   res://src/sprites/heroes/knight/run/run_anim_f3.png �F��3� 
   Texture2D 4   res://src/sprites/heroes/knight/run/run_anim_f4.png ��W�	�5      local://RectangleShape2D_qwatg          local://SpriteFrames_2pj31 C         local://PackedScene_mu4br          RectangleShape2D       
     @A  �A         SpriteFrames                         name ,      idle       speed      �@      loop             frames                   texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            name ,      run       speed       A      loop             frames                   texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?         PackedScene          	         names "         player    scale    script    CharacterBody2D 
   collision 	   position    shape    CollisionShape2D 
   animation    sprite_frames    AnimatedSprite2D    	   variants       
     @@  @@          
     �?  �@                   ,      idle       node_count             nodes     !   ��������       ����                                  ����                           
      ����   	                      conn_count              conns               node_paths              editable_instances              version             RSRC{�GST2            ����                        �   RIFF�   WEBPVP8L�   /�?���$hq>��Y�8B���-�"�fS H!��{'��������� .Wt}��q$�mC޸#�m(�@%��Ϳ`J� ���z�&@;���{�b��7���5��$C��{���*����$��dT��+��d��z��4�@T�!p�-[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://bp6ex1lfcw8p1"
path="res://.godot/imported/hit_anim_f1.png-470415fa7647ef9720ebb95602a5e006.ctex"
metadata={
"vram_texture": false
}
 %��?5.�GST2            ����                        �   RIFF�   WEBPVP8L�   /�?���$hq>��Y�8B���-�"�fS H!��{'��������� .Wt}��Q#I�t�����`5n(4�)�Z� ��p9�ŵ�
[� �����$���d��!Iz,D�9ICz,��=Hz�"�f��!EĘI�m��UR�� �L����!�[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://dqpbn65cu8ptb"
path="res://.godot/imported/idle_anim_f1.png-ad463d57ab462aeb243836b98653e426.ctex"
metadata={
"vram_texture": false
}
 tsϵA��GST2            ����                        �   RIFF�   WEBPVP8L�   /�?���$hq>��Y�8B���-�"�fS H!��{'��������� .Wt}��Q#I���Fp�_-�b�
a���� �������e Н��$(������d �dؾ$!n�u���G�����~'�Zg��&@  "�
gֽU��^[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://crd4rtbysva0"
path="res://.godot/imported/idle_anim_f2.png-a45352f7776bd16459b59687de3262a5.ctex"
metadata={
"vram_texture": false
}
 P�=�$�GST2            ����                        �   RIFF�   WEBPVP8L�   /�?���$hq>��Y�8B���-�"�fS H!��{'��������� .Wt}��U$I�rw(x�� `���J`�l����� ��0����h3�d�@�R��$J�$���O N��m'"�45i�i��#i�"I:;iђ����&��$��O���[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://hac632u7bly5"
path="res://.godot/imported/idle_anim_f3.png-e3818f58aa95ce99258425fa8b173a83.ctex"
metadata={
"vram_texture": false
}
 �k龎"�GST2            ����                        �   RIFF�   WEBPVP8L�   /�?���$hq>��Y�8B���-�"�fS H!��{'��������� .Wt}��Q#I������.��pC� L���E��	�.�ŵq�[�Ԛ$�;�ɒ�?��$�o��7����� �6����I2$����6��D�f6hě���L:[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://b5i6n552ix80t"
path="res://.godot/imported/idle_anim_f4.png-ab11e99ef045eed9ac1485988ed31232.ctex"
metadata={
"vram_texture": false
}
 �$e�7��GST2            ����                        �   RIFF�   WEBPVP8L�   /�?���$hq>��Y�8B���-�"�fS H!��{'��������� .Wt}��Q#I�t���� L2X�[
a���h!D�N�3�]'�H����T�/l��P�
��� 3U7�6h�}�}�2S��)��:۟�������: � ^��5W4�T[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://be4w745t2r458"
path="res://.godot/imported/run_anim_f1.png-f089b40a9ca17844ee378d715d881928.ctex"
metadata={
"vram_texture": false
}
 �7��GST2            ����                        �   RIFF�   WEBPVP8L�   /�?���$hq>��Y�8B���-�"�fS H!��{'��������� .Wt}��Ul[������0� ��7HR����J����i��F$��s6��ۻ"(I���"����Q�}���23U�Ȉ����C�>/��@, j�Ѣ�����<�[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://bpvbks5cx54am"
path="res://.godot/imported/run_anim_f2.png-d4ff8fd35275846afb69b8637bfc391f.ctex"
metadata={
"vram_texture": false
}
 ��,�óc�GST2            ����                        �   RIFF�   WEBPVP8L�   /�?���$hq>��Y�8B���-�"�fS H!��{'��������� .Wt}��U$I�� 7�=��i/Vk��%���=%D��i6{�@�����!���ݲ�@��(�F)�E�J���sDR�"��$Z&r@~�M� ����\��[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://bufxees2n21"
path="res://.godot/imported/run_anim_f3.png-086096318a80aa1670905f405e82aba8.ctex"
metadata={
"vram_texture": false
}
 �$.�_��5+�GST2            ����                        �   RIFF�   WEBPVP8L�   /�?���$hq>��Y�8B���-�"�fS H!��{'��������� .Wt}��U$I�r��7�=�	�rp�X#a��$D�����u�`��E�����~�-jB�
���Jf���}���I�}�L��@dfl�)g ͬ �[�6h ]Q[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://bu7mv3yr7p1sq"
path="res://.godot/imported/run_anim_f4.png-37661c3832b03a5644f4ff47bca38250.ctex"
metadata={
"vram_texture": false
}
 H��q�GST2            ����                        �   RIFF�   WEBPVP8L�   /�?���$hq>��Y�8B���-�"�fS H!��{'��������� .Wt}��u#INux�9��v3� 7�6<�@D�'@�?�J�7��O�;3R���43oqp]���ļ]��7qkn�uw=��	 Ml�����pMd "-��[ 3���ܕC�[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://wwgw8olquwfm"
path="res://.godot/imported/sleep_anim_f1.png-f5638d9289cae2e80d2ce764f0c6e857.ctex"
metadata={
"vram_texture": false
}
 �̲$���GST2            ����                        �   RIFF�   WEBPVP8L�   /�?���$hq>��Y�8B���-�"�fS H!��{'��������� .Wt}��q$IN�X�y��K�x�6��@����>"�?�r�T�)~��3#%:�N3��%!��[O�ۥm~���_w����h Z�� ��D�}K�b��i��+�@[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://clao87cfa06nn"
path="res://.godot/imported/sleep_anim_f2.png-5c8ffe31f3c2a11c8c9497320a0664e0.ctex"
metadata={
"vram_texture": false
}
 Q���
GST2            ����                        �   RIFF�   WEBPVP8L�   /�?���$hq>��Y�8B���-�"�fS H!��{'��������� .Wt}��q#Ins 3���_b'��Hi7m�8y)���O���# T���;=�[b�ݶ;|���P���W䩶w�ܑ��S,����'f��YU&��"�1�H�n "�[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://db8ro16k486uh"
path="res://.godot/imported/sleep_anim_f3.png-659b1357039ac7603449f25f9ce632e7.ctex"
metadata={
"vram_texture": false
}
 G7D= nGST2            ����                        �   RIFF�   WEBPVP8L�   /�?���$hq>��Y�8B���-�"�fS H!��{'��������� .Wt}��q#Ins 3�o��;��%@I{h���+���O���	 *c����N��pv?� .-G]���Χ-�\�|~��'�9<P�Β�����S��T�}(>����Ե[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://oxvovlqdu42u"
path="res://.godot/imported/sleep_anim_f4.png-c464c987e39a7097eedd9ae9418e27d4.ctex"
metadata={
"vram_texture": false
}
 3�hx܂GST2            ����                        �   RIFF�   WEBPVP8L�   /�?���$hq>��Y�8B���-�"�fS H!��{'��������� .Wt}��Q#I�t�����`5n(4�)�Z� ��p9�ŵ�
[� �����$���d��!Iz,D�9ICz,��=Hz�"�f��!EĘI�m��UR�� �>��� O[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://npfy7cenyvk"
path="res://.godot/imported/kinght.png-be8b5813652303b909df5a1a9d1e9fa4.ctex"
metadata={
"vram_texture": false
}
 ��M�̵j������GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح�m�m������$$P�����එ#���=�]��SnA�VhE��*JG�
&����^x��&�+���2ε�L2�@��		��S�2A�/E���d"?���Dh�+Z�@:�Gk�FbWd�\�C�Ӷg�g�k��Vo��<c{��4�;M�,5��ٜ2�Ζ�yO�S����qZ0��s���r?I��ѷE{�4�Ζ�i� xK�U��F�Z�y�SL�)���旵�V[�-�1Z�-�1���z�Q�>�tH�0��:[RGň6�=KVv�X�6�L;�N\���J���/0u���_��U��]���ǫ)�9��������!�&�?W�VfY�2���༏��2kSi����1!��z+�F�j=�R�O�{�
ۇ�P-�������\����y;�[ ���lm�F2K�ޱ|��S��d)é�r�BTZ)e�� ��֩A�2�����X�X'�e1߬���p��-�-f�E�ˊU	^�����T�ZT�m�*a|	׫�:V���G�r+�/�T��@U�N׼�h�+	*�*sN1e�,e���nbJL<����"g=O��AL�WO!��߈Q���,ɉ'���lzJ���Q����t��9�F���A��g�B-����G�f|��x��5�'+��O��y��������F��2�����R�q�):VtI���/ʎ�UfěĲr'�g�g����5�t�ۛ�F���S�j1p�)�JD̻�ZR���Pq�r/jt�/sO�C�u����i�y�K�(Q��7őA�2���R�ͥ+lgzJ~��,eA��.���k�eQ�,l'Ɨ�2�,eaS��S�ԟe)��x��ood�d)����h��ZZ��`z�պ��;�Cr�rpi&��՜�Pf��+���:w��b�DUeZ��ڡ��iA>IN>���܋�b�O<�A���)�R�4��8+��k�Jpey��.���7ryc�!��M�a���v_��/�����'��t5`=��~	`�����p\�u����*>:|ٻ@�G�����wƝ�����K5�NZal������LH�]I'�^���+@q(�q2q+�g�}�o�����S߈:�R�݉C������?�1�.��
�ڈL�Fb%ħA ����Q���2�͍J]_�� A��Fb�����ݏ�4o��'2��F�  ڹ���W�L |����YK5�-�E�n�K�|�ɭvD=��p!V3gS��`�p|r�l	F�4�1{�V'&����|pj� ߫'ş�pdT�7`&�
�1g�����@D�˅ �x?)~83+	p �3W�w��j"�� '�J��CM�+ �Ĝ��"���4� ����nΟ	�0C���q'�&5.��z@�S1l5Z��]�~L�L"�"�VS��8w.����H�B|���K(�}
r%Vk$f�����8�ڹ���R�dϝx/@�_�k'�8���E���r��D���K�z3�^���Vw��ZEl%~�Vc���R� �Xk[�3��B��Ğ�Y��A`_��fa��D{������ @ ��dg�������Mƚ�R�`���s����>x=�����	`��s���H���/ū�R�U�g�r���/����n�;�SSup`�S��6��u���⟦;Z�AN3�|�oh�9f�Pg�����^��g�t����x��)Oq�Q�My55jF����t9����,�z�Z�����2��#�)���"�u���}'�*�>�����ǯ[����82һ�n���0�<v�ݑa}.+n��'����W:4TY�����P�ר���Cȫۿ�Ϗ��?����Ӣ�K�|y�@suyo�<�����{��x}~�����~�AN]�q�9ޝ�GG�����[�L}~�`�f%4�R!1�no���������v!�G����Qw��m���"F!9�vٿü�|j�����*��{Ew[Á��������u.+�<���awͮ�ӓ�Q �:�Vd�5*��p�ioaE��,�LjP��	a�/�˰!{g:���3`=`]�2��y`�"��N�N�p���� ��3�Z��䏔��9"�ʞ l�zP�G�ߙj��V�>���n�/��׷�G��[���\��T��Ͷh���ag?1��O��6{s{����!�1�Y�����91Qry��=����y=�ٮh;�����[�tDV5�chȃ��v�G ��T/'XX���~Q�7��+[�e��Ti@j��)��9��J�hJV�#�jk�A�1�^6���=<ԧg�B�*o�߯.��/�>W[M���I�o?V���s��|yu�xt��]�].��Yyx�w���`��C���pH��tu�w�J��#Ef�Y݆v�f5�e��8��=�٢�e��W��M9J�u�}]釧7k���:�o�����Ç����ս�r3W���7k���e�������ϛk��Ϳ�_��lu�۹�g�w��~�ߗ�/��ݩ�-�->�I�͒���A�	���ߥζ,�}�3�UbY?�Ӓ�7q�Db����>~8�]
� ^n׹�[�o���Z-�ǫ�N;U���E4=eȢ�vk��Z�Y�j���k�j1�/eȢK��J�9|�,UX65]W����lQ-�"`�C�.~8ek�{Xy���d��<��Gf�ō�E�Ӗ�T� �g��Y�*��.͊e��"�]�d������h��ڠ����c�qV�ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[ �P"�2c�M���[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://b5t8klp2k08mx"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
 �!�U�p����J��:[remap]

path="res://.godot/exported/133200997/export-dc9d38bb73a719b6341f8164a6aba81a-map_1.scn"
�1��6�/k�탘9[remap]

path="res://.godot/exported/133200997/export-8baf146757cc1be1d2ffd604b46cc46c-player.scn"
�����z(�`X�list=Array[Dictionary]([])
��$�'<svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 813 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H447l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c3 34 55 34 58 0v-86c-3-34-55-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
v��]��m�   ����ڦ�S   res://src/maps/map_1.tscn�d�*"
Q#   res://src/scenes/player/player.tscnL.7��03   res://src/sprites/heroes/knight/hit/hit_anim_f1.pngK@���^s5   res://src/sprites/heroes/knight/idle/idle_anim_f1.png]���<p5   res://src/sprites/heroes/knight/idle/idle_anim_f2.png²���(�5   res://src/sprites/heroes/knight/idle/idle_anim_f3.png��3��>5   res://src/sprites/heroes/knight/idle/idle_anim_f4.png)5�s[�%3   res://src/sprites/heroes/knight/run/run_anim_f1.png k�th�T03   res://src/sprites/heroes/knight/run/run_anim_f2.png�F��3� 3   res://src/sprites/heroes/knight/run/run_anim_f3.png��W�	�53   res://src/sprites/heroes/knight/run/run_anim_f4.pngYO��7   res://src/sprites/heroes/knight/sleep/sleep_anim_f1.png+4B�]��L7   res://src/sprites/heroes/knight/sleep/sleep_anim_f2.png�����Ie7   res://src/sprites/heroes/knight/sleep/sleep_anim_f3.png��z0\P7   res://src/sprites/heroes/knight/sleep/sleep_anim_f4.png��Ԫ�b *   res://src/sprites/heroes/knight/kinght.png; cʠ�>   res://icon.svg#n	N   res://builds/index.icon.pngu�eg8�}3'   res://builds/index.apple-touch-icon.png<��5y��   res://builds/index.png1ECFG      application/config/name         Dungeon-warriors-II    application/run/main_scene$         res://src/maps/map_1.tscn      application/config/features$   "         4.1    Forward Plus       application/config/icon         res://icon.svg  "   display/window/size/viewport_width         #   display/window/size/viewport_height      �     display/window/size/resizable             display/window/stretch/mode         viewport   input/ui_left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device         	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode     @    physical_keycode       	   key_label             unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device            axis       
   axis_value       ��   script            InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   A   	   key_label             unicode    a      echo          script         input/ui_right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device         	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode     @    physical_keycode       	   key_label             unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device            axis       
   axis_value       �?   script            InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   D   	   key_label             unicode    d      echo          script         input/ui_up�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device         	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode     @    physical_keycode       	   key_label             unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device            axis      
   axis_value       ��   script            InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   W   	   key_label             unicode    w      echo          script         input/ui_down�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device         	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode     @    physical_keycode       	   key_label             unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device            axis      
   axis_value       �?   script            InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   S   	   key_label             unicode    s      echo          script      9   rendering/textures/canvas_textures/default_texture_filter          {R�5�m�