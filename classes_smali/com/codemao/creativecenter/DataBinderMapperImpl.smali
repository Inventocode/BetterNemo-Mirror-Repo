.class public Lcom/codemao/creativecenter/DataBinderMapperImpl;
.super Landroidx/databinding/DataBinderMapper;
.source "DataBinderMapperImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/DataBinderMapperImpl$InnerLayoutIdLookup;,
        Lcom/codemao/creativecenter/DataBinderMapperImpl$InnerBrLookup;
    }
.end annotation


# static fields
.field private static final INTERNAL_LAYOUT_ID_LOOKUP:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 152
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v0, Lcom/codemao/creativecenter/DataBinderMapperImpl;->INTERNAL_LAYOUT_ID_LOOKUP:Landroid/util/SparseIntArray;

    .line 155
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_activity_extension_categories:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 156
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_activity_material:I

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 157
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_activity_new_main:I

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 158
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_activity_new_main_for_fragment:I

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 159
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_activity_new_main_landscape:I

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 160
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_bcm_fragment:I

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 161
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_item_adapter_change_sound_footer:I

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 162
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_item_adapter_change_style:I

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 163
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_item_adapter_change_style_footer:I

    const/16 v3, 0x9

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 164
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_item_adapter_material_actor:I

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 165
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_item_adapter_material_background:I

    const/16 v3, 0xb

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 166
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_item_adapter_material_left:I

    const/16 v3, 0xc

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 167
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_item_adapter_material_loading:I

    const/16 v3, 0xd

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 168
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_item_adapter_material_text:I

    const/16 v3, 0xe

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 169
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_item_adapter_material_uplaod:I

    const/16 v3, 0xf

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 170
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_item_adapter_theme_detail:I

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 171
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_item_edit_background:I

    const/16 v3, 0x11

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 172
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_item_edit_empty:I

    const/16 v3, 0x12

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 173
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_item_edit_role:I

    const/16 v3, 0x13

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 174
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_item_scene_edit:I

    const/16 v3, 0x14

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 175
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_item_scene_edit_debug:I

    const/16 v3, 0x15

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 176
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_layout_hanshubar:I

    const/16 v3, 0x16

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 177
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_layout_item_theme_list:I

    const/16 v3, 0x17

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 178
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_layout_material_bottom:I

    const/16 v3, 0x18

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 179
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_layout_material_collect:I

    const/16 v3, 0x19

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 180
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_layout_material_item:I

    const/16 v3, 0x1a

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 181
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_layout_material_recorder:I

    const/16 v3, 0x1b

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 182
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_layout_material_sound:I

    const/16 v3, 0x1c

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 183
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_layout_material_sound_pop:I

    const/16 v3, 0x1d

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 184
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_layout_material_sound_pop_pad:I

    const/16 v3, 0x1e

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 185
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_layout_material_top:I

    const/16 v3, 0x1f

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 186
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_layout_screenselect:I

    const/16 v3, 0x20

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 187
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_layout_sidebar:I

    const/16 v3, 0x21

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 188
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_layout_sidebar_for_fragment:I

    const/16 v3, 0x22

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 189
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_layout_sidebar_for_fragment_pad:I

    const/16 v3, 0x23

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 190
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_layout_stage_dashboard:I

    const/16 v3, 0x24

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 191
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_rn_waiting:I

    const/16 v3, 0x25

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 192
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_view_cm_keyboard:I

    const/16 v3, 0x26

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 193
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_view_cm_keyboard_disc:I

    const/16 v3, 0x27

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 194
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_view_create_role:I

    const/16 v3, 0x28

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 195
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_view_extension_category:I

    const/16 v3, 0x29

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 196
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_view_fullscreen_bottom:I

    const/16 v3, 0x2a

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 197
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_view_fullscreen_left:I

    const/16 v3, 0x2b

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 198
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_view_play_music:I

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Landroidx/databinding/DataBinderMapper;-><init>()V

    return-void
.end method


# virtual methods
.method public collectDependencies()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/databinding/DataBinderMapper;",
            ">;"
        }
    .end annotation

    .line 513
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 514
    new-instance v1, Landroidx/databinding/library/baseAdapters/DataBinderMapperImpl;

    invoke-direct {v1}, Landroidx/databinding/library/baseAdapters/DataBinderMapperImpl;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public convertBrIdToString(I)Ljava/lang/String;
    .registers 3

    .line 507
    sget-object v0, Lcom/codemao/creativecenter/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getDataBinder(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    .registers 5

    .line 203
    sget-object v0, Lcom/codemao/creativecenter/DataBinderMapperImpl;->INTERNAL_LAYOUT_ID_LOOKUP:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result p3

    if-lez p3, :cond_677

    .line 205
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_66f

    packed-switch p3, :pswitch_data_67a

    goto/16 :goto_677

    :pswitch_13  #0x2c
    const-string p3, "layout/creative_view_play_music_0"

    .line 469
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_21

    .line 470
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeViewPlayMusicBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeViewPlayMusicBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 472
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_view_play_music is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_38  #0x2b
    const-string p3, "layout/creative_view_fullscreen_left_0"

    .line 463
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_46

    .line 464
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 466
    :cond_46
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_view_fullscreen_left is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_5d  #0x2a
    const-string p3, "layout/creative_view_fullscreen_bottom_0"

    .line 457
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6b

    .line 458
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 460
    :cond_6b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_view_fullscreen_bottom is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_82  #0x29
    const-string p3, "layout/creative_view_extension_category_0"

    .line 451
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_90

    .line 452
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeViewExtensionCategoryBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeViewExtensionCategoryBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 454
    :cond_90
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_view_extension_category is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_a7  #0x28
    const-string p3, "layout/creative_view_create_role_0"

    .line 445
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b5

    .line 446
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 448
    :cond_b5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_view_create_role is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_cc  #0x27
    const-string p3, "layout/creative_view_cm_keyboard_disc_0"

    .line 439
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_da

    .line 440
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardDiscBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardDiscBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 442
    :cond_da
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_view_cm_keyboard_disc is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_f1  #0x26
    const-string p3, "layout/creative_view_cm_keyboard_0"

    .line 433
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_ff

    .line 434
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 436
    :cond_ff
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_view_cm_keyboard is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_116  #0x25
    const-string p3, "layout/creative_rn_waiting_0"

    .line 427
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_124

    .line 428
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 430
    :cond_124
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_rn_waiting is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_13b  #0x24
    const-string p3, "layout/creative_layout_stage_dashboard_0"

    .line 421
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_149

    .line 422
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 424
    :cond_149
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_layout_stage_dashboard is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_160  #0x23
    const-string p3, "layout/creative_layout_sidebar_for_fragment_pad_0"

    .line 415
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_16e

    .line 416
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 418
    :cond_16e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_layout_sidebar_for_fragment_pad is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_185  #0x22
    const-string p3, "layout/creative_layout_sidebar_for_fragment_0"

    .line 409
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_193

    .line 410
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 412
    :cond_193
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_layout_sidebar_for_fragment is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1aa  #0x21
    const-string p3, "layout/creative_layout_sidebar_0"

    .line 403
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1b8

    .line 404
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 406
    :cond_1b8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_layout_sidebar is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1cf  #0x20
    const-string p3, "layout/creative_layout_screenselect_0"

    .line 397
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1dd

    .line 398
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 400
    :cond_1dd
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_layout_screenselect is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1f4  #0x1f
    const-string p3, "layout/creative_layout_material_top_0"

    .line 391
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_202

    .line 392
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 394
    :cond_202
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_layout_material_top is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_219  #0x1e
    const-string p3, "layout/creative_layout_material_sound_pop_pad_0"

    .line 385
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_227

    .line 386
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopPadBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopPadBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 388
    :cond_227
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_layout_material_sound_pop_pad is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_23e  #0x1d
    const-string p3, "layout/creative_layout_material_sound_pop_0"

    .line 379
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_24c

    .line 380
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 382
    :cond_24c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_layout_material_sound_pop is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_263  #0x1c
    const-string p3, "layout/creative_layout_material_sound_0"

    .line 373
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_271

    .line 374
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 376
    :cond_271
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_layout_material_sound is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_288  #0x1b
    const-string p3, "layout/creative_layout_material_recorder_0"

    .line 367
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_296

    .line 368
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 370
    :cond_296
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_layout_material_recorder is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2ad  #0x1a
    const-string p3, "layout/creative_layout_material_item_0"

    .line 361
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2bb

    .line 362
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 364
    :cond_2bb
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_layout_material_item is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2d2  #0x19
    const-string p3, "layout/creative_layout_material_collect_0"

    .line 355
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2e0

    .line 356
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialCollectBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialCollectBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 358
    :cond_2e0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_layout_material_collect is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2f7  #0x18
    const-string p3, "layout/creative_layout_material_bottom_0"

    .line 349
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_305

    .line 350
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 352
    :cond_305
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_layout_material_bottom is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_31c  #0x17
    const-string p3, "layout/creative_layout_item_theme_list_0"

    .line 343
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_32a

    .line 344
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 346
    :cond_32a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_layout_item_theme_list is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_341  #0x16
    const-string p3, "layout/creative_layout_hanshubar_0"

    .line 337
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_34f

    .line 338
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 340
    :cond_34f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_layout_hanshubar is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_366  #0x15
    const-string p3, "layout/creative_item_scene_edit_debug_0"

    .line 331
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_374

    .line 332
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditDebugBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditDebugBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 334
    :cond_374
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_item_scene_edit_debug is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_38b  #0x14
    const-string p3, "layout/creative_item_scene_edit_0"

    .line 325
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_399

    .line 326
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 328
    :cond_399
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_item_scene_edit is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3b0  #0x13
    const-string p3, "layout/creative_item_edit_role_0"

    .line 319
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3be

    .line 320
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 322
    :cond_3be
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_item_edit_role is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3d5  #0x12
    const-string p3, "layout/creative_item_edit_empty_0"

    .line 313
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3e3

    .line 314
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeItemEditEmptyBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeItemEditEmptyBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 316
    :cond_3e3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_item_edit_empty is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3fa  #0x11
    const-string p3, "layout/creative_item_edit_background_0"

    .line 307
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_408

    .line 308
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 310
    :cond_408
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_item_edit_background is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_41f  #0x10
    const-string p3, "layout/creative_item_adapter_theme_detail_0"

    .line 301
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_42d

    .line 302
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 304
    :cond_42d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_item_adapter_theme_detail is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_444  #0xf
    const-string p3, "layout/creative_item_adapter_material_uplaod_0"

    .line 295
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_452

    .line 296
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialUplaodBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialUplaodBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 298
    :cond_452
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_item_adapter_material_uplaod is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_469  #0xe
    const-string p3, "layout/creative_item_adapter_material_text_0"

    .line 289
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_477

    .line 290
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialTextBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialTextBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 292
    :cond_477
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_item_adapter_material_text is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_48e  #0xd
    const-string p3, "layout/creative_item_adapter_material_loading_0"

    .line 283
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_49c

    .line 284
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 286
    :cond_49c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_item_adapter_material_loading is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4b3  #0xc
    const-string p3, "layout/creative_item_adapter_material_left_0"

    .line 277
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4c1

    .line 278
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 280
    :cond_4c1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_item_adapter_material_left is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4d8  #0xb
    const-string p3, "layout/creative_item_adapter_material_background_0"

    .line 271
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4e6

    .line 272
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 274
    :cond_4e6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_item_adapter_material_background is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4fd  #0xa
    const-string p3, "layout/creative_item_adapter_material_actor_0"

    .line 265
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_50b

    .line 266
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 268
    :cond_50b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_item_adapter_material_actor is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_522  #0x9
    const-string p3, "layout/creative_item_adapter_change_style_footer_0"

    .line 259
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_530

    .line 260
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleFooterBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleFooterBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 262
    :cond_530
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_item_adapter_change_style_footer is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_547  #0x8
    const-string p3, "layout/creative_item_adapter_change_style_0"

    .line 253
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_555

    .line 254
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 256
    :cond_555
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_item_adapter_change_style is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_56c  #0x7
    const-string p3, "layout/creative_item_adapter_change_sound_footer_0"

    .line 247
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_57a

    .line 248
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeSoundFooterBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeSoundFooterBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 250
    :cond_57a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_item_adapter_change_sound_footer is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_591  #0x6
    const-string p3, "layout/creative_bcm_fragment_0"

    .line 241
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_59f

    .line 242
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 244
    :cond_59f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_bcm_fragment is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_5b6  #0x5
    const-string p3, "layout/creative_activity_new_main_landscape_0"

    .line 235
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5c4

    .line 236
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainLandscapeBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainLandscapeBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 238
    :cond_5c4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_activity_new_main_landscape is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_5db  #0x4
    const-string p3, "layout/creative_activity_new_main_for_fragment_0"

    .line 229
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5e9

    .line 230
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainForFragmentBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainForFragmentBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 232
    :cond_5e9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_activity_new_main_for_fragment is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_600  #0x3
    const-string p3, "layout/creative_activity_new_main_0"

    .line 223
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_60e

    .line 224
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeActivityNewMainBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 226
    :cond_60e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_activity_new_main is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_625  #0x2
    const-string p3, "layout/creative_activity_material_0"

    .line 217
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_633

    .line 218
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 220
    :cond_633
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_activity_material is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_64a  #0x1
    const-string p3, "layout/creative_activity_extension_categories_0"

    .line 211
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_658

    .line 212
    new-instance p3, Lcom/codemao/creativecenter/databinding/CreativeActivityExtensionCategoriesBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeActivityExtensionCategoriesBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 214
    :cond_658
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for creative_activity_extension_categories is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 207
    :cond_66f
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_677
    :goto_677
    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_67a
    .packed-switch 0x1
        :pswitch_64a  #00000001
        :pswitch_625  #00000002
        :pswitch_600  #00000003
        :pswitch_5db  #00000004
        :pswitch_5b6  #00000005
        :pswitch_591  #00000006
        :pswitch_56c  #00000007
        :pswitch_547  #00000008
        :pswitch_522  #00000009
        :pswitch_4fd  #0000000a
        :pswitch_4d8  #0000000b
        :pswitch_4b3  #0000000c
        :pswitch_48e  #0000000d
        :pswitch_469  #0000000e
        :pswitch_444  #0000000f
        :pswitch_41f  #00000010
        :pswitch_3fa  #00000011
        :pswitch_3d5  #00000012
        :pswitch_3b0  #00000013
        :pswitch_38b  #00000014
        :pswitch_366  #00000015
        :pswitch_341  #00000016
        :pswitch_31c  #00000017
        :pswitch_2f7  #00000018
        :pswitch_2d2  #00000019
        :pswitch_2ad  #0000001a
        :pswitch_288  #0000001b
        :pswitch_263  #0000001c
        :pswitch_23e  #0000001d
        :pswitch_219  #0000001e
        :pswitch_1f4  #0000001f
        :pswitch_1cf  #00000020
        :pswitch_1aa  #00000021
        :pswitch_185  #00000022
        :pswitch_160  #00000023
        :pswitch_13b  #00000024
        :pswitch_116  #00000025
        :pswitch_f1  #00000026
        :pswitch_cc  #00000027
        :pswitch_a7  #00000028
        :pswitch_82  #00000029
        :pswitch_5d  #0000002a
        :pswitch_38  #0000002b
        :pswitch_13  #0000002c
    .end packed-switch
.end method

.method public getDataBinder(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    .registers 5

    const/4 p1, 0x0

    if-eqz p2, :cond_21

    .line 481
    array-length v0, p2

    if-nez v0, :cond_7

    goto :goto_21

    .line 484
    :cond_7
    sget-object v0, Lcom/codemao/creativecenter/DataBinderMapperImpl;->INTERNAL_LAYOUT_ID_LOOKUP:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result p3

    if-lez p3, :cond_21

    const/4 p3, 0x0

    .line 486
    aget-object p2, p2, p3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_19

    goto :goto_21

    .line 488
    :cond_19
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    :goto_21
    return-object p1
.end method

.method public getLayoutId(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 501
    :cond_4
    sget-object v1, Lcom/codemao/creativecenter/DataBinderMapperImpl$InnerLayoutIdLookup;->sKeys:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_f

    goto :goto_13

    .line 502
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_13
    return v0
.end method
