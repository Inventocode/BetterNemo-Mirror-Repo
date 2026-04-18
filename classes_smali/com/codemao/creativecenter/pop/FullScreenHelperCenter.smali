.class public Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;
.super Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;
.source "FullScreenHelperCenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;,
        Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoListAdapter;
    }
.end annotation


# instance fields
.field private bg:Landroid/view/View;

.field private bgProgress:Landroid/view/View;

.field private currentPositon:I

.field private download:Lio/reactivex/disposables/Disposable;

.field private fromCreate:Z

.field private isDissmissing:Z

.field private ivClose:Landroid/view/View;

.field private llTittle:Landroid/widget/LinearLayout;

.field private mdatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;",
            ">;"
        }
    .end annotation
.end field

.field private progressBar:Landroid/widget/ProgressBar;

.field private rv:Landroidx/recyclerview/widget/RecyclerView;

.field private seekpotisiton:I

.field private tvHelp:Landroid/widget/TextView;

.field private videoView:Landroid/widget/VideoView;


# direct methods
.method public static synthetic $r8$lambda$HFvWwJq5gP58b2VQK9CNF5QBiOQ(Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->lambda$initPopupContent$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 8

    .line 87
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->isDissmissing:Z

    const/16 v0, -0x63

    .line 56
    iput v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->seekpotisiton:I

    .line 57
    iput p1, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->currentPositon:I

    const/16 v0, 0x12

    new-array v0, v0, [Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;

    .line 61
    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;

    const-string/jumbo v2, "复制角色"

    const-string v3, "https://static.codemao.cn/nemo/22/res/help_video/1_copy_actor.mp4"

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, p1

    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;

    const-string/jumbo v2, "重命名角色"

    const-string v3, "https://static.codemao.cn/nemo/22/res/help_video/2_rename_actor.mp4"

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;

    const-string/jumbo v2, "删除角色"

    const-string v3, "https://static.codemao.cn/nemo/22/res/help_video/3_delete_actor.mp4"

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;

    const-string/jumbo v2, "调整角色图层"

    const-string v3, "https://static.codemao.cn/nemo/22/res/help_video/4_adjust_actor_layer.mp4"

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;

    const-string/jumbo v2, "添加造型"

    const-string v3, "https://static.codemao.cn/nemo/22/res/help_video/5_add_style.mp4"

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;

    const-string/jumbo v2, "撤销、重做"

    const-string v3, "https://static.codemao.cn/nemo/22/res/help_video/6_undo.mp4"

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;

    const-string/jumbo v2, "添加删除屏幕"

    const-string v3, "https://static.codemao.cn/nemo/22/res/help_video/7_add_delete_screen.mp4"

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;

    const-string/jumbo v2, "全屏展示"

    const-string v3, "https://static.codemao.cn/nemo/22/res/help_video/8_full_screen.mp4"

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;

    const-string/jumbo v2, "调整中心点"

    const-string v3, "https://static.codemao.cn/nemo/22/res/help_video/9_adjust_pivot.mp4"

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;

    const-string/jumbo v2, "切换角色"

    const-string v3, "https://static.codemao.cn/nemo/22/res/help_video/10_switch_actor.mp4"

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;

    const-string/jumbo v3, "复制积木"

    const-string v4, "https://static.codemao.cn/nemo/22/res/help_video/11_copy_block.mp4"

    invoke-direct {v1, v3, v4}, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xa

    aput-object v1, v0, v3

    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;

    const-string/jumbo v3, "复制全部积木"

    const-string v4, "https://static.codemao.cn/nemo/22/res/help_video/12_copy_all_blocks.mp4"

    invoke-direct {v1, v3, v4}, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xb

    aput-object v1, v0, v3

    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;

    const-string/jumbo v3, "删除积木"

    const-string v4, "https://static.codemao.cn/nemo/22/res/help_video/13_delete_block.mp4"

    invoke-direct {v1, v3, v4}, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xc

    aput-object v1, v0, v3

    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;

    const-string/jumbo v3, "添加变量"

    const-string v4, "https://static.codemao.cn/nemo/22/res/help_video/14_add_variable.mp4"

    invoke-direct {v1, v3, v4}, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xd

    aput-object v1, v0, v3

    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;

    const-string/jumbo v3, "删除变量"

    const-string v4, "https://static.codemao.cn/nemo/22/res/help_video/15_delete_variable.mp4"

    invoke-direct {v1, v3, v4}, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xe

    aput-object v1, v0, v3

    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;

    const-string/jumbo v3, "隐藏变量"

    const-string v4, "https://static.codemao.cn/nemo/22/res/help_video/16_hide_variable.mp4"

    invoke-direct {v1, v3, v4}, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xf

    aput-object v1, v0, v3

    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;

    const-string/jumbo v3, "变量重命名"

    const-string v4, "https://static.codemao.cn/nemo/22/res/help_video/17_rename_variable.mp4"

    invoke-direct {v1, v3, v4}, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x10

    aput-object v1, v0, v3

    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;

    const-string/jumbo v3, "添加声音"

    const-string v4, "https://static.codemao.cn/nemo/22/res/help_video/18_add_sound.mp4"

    invoke-direct {v1, v3, v4}, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x11

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->mdatas:Ljava/util/List;

    .line 88
    iput-boolean p2, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->fromCreate:Z

    if-eqz p2, :cond_10e

    goto :goto_110

    :cond_10e
    const/16 p1, 0x9

    .line 89
    :goto_110
    iput p1, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->currentPositon:I

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->rv:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;)Landroid/widget/VideoView;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->videoView:Landroid/widget/VideoView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;)V
    .registers 1

    .line 45
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->hideProgress()V

    return-void
.end method

.method private hideProgress()V
    .registers 3

    .line 183
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->bgProgress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private initSize()V
    .registers 6

    .line 141
    sget v0, Lcom/codemao/creativestore/CreativeStoreConstants;->SYSTEM_LAND_HEIGHT:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42ac0000  # 86.0f

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 142
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x43100000  # 144.0f

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    .line 143
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    if-eqz v2, :cond_99

    .line 144
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42f80000  # 124.0f

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 145
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x437a0000  # 250.0f

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    .line 146
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->llTittle:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42800000  # 64.0f

    invoke-static {v2, v3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 147
    sget v0, Lcom/codemao/creativestore/CreativeStoreConstants;->SYSTEM_LAND_HEIGHT:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x43a00000  # 320.0f

    invoke-static {v2, v3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v0, v2

    .line 148
    iget-object v2, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->ivClose:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x42200000  # 40.0f

    invoke-static {v3, v4}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 149
    iget-object v2, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->ivClose:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 150
    iget-object v2, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->tvHelp:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41900000  # 18.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 151
    iget-object v2, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->tvHelp:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41a00000  # 20.0f

    invoke-static {v3, v4}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    :cond_99
    int-to-float v0, v0

    const v2, 0x3fe38e39

    mul-float v0, v0, v2

    int-to-float v3, v1

    add-float/2addr v0, v3

    .line 154
    sget v3, Lcom/codemao/creativestore/CreativeStoreConstants;->SYSTEM_WIDTH:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_bf

    .line 155
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->bg:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 156
    sget v3, Lcom/codemao/creativestore/CreativeStoreConstants;->SYSTEM_WIDTH:I

    sub-int/2addr v3, v1

    .line 157
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float v1, v3

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 158
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 159
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->bg:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_bf
    return-void
.end method

.method private synthetic lambda$initPopupContent$0(Landroid/view/View;)V
    .registers 2

    .line 108
    invoke-virtual {p0}, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->dismiss()V

    return-void
.end method

.method private playVideo(Landroid/view/View;Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;)V
    .registers 6

    .line 188
    iget-boolean v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->isDissmissing:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_2c

    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_18

    .line 194
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_2c

    .line 195
    :cond_18
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    sget v2, Lcom/codemao/creativestore/CreativeStoreConstants;->SYSTEM_LAND_HEIGHT:I

    if-le v0, v2, :cond_2c

    .line 196
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    sget v2, Lcom/codemao/creativestore/CreativeStoreConstants;->SYSTEM_LAND_HEIGHT:I

    sub-int/2addr p1, v2

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 199
    :cond_2c
    :goto_2c
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->showProgress()V

    .line 200
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->videoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->suspend()V

    .line 201
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->videoView:Landroid/widget/VideoView;

    iget-object p2, p2, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 202
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->videoView:Landroid/widget/VideoView;

    new-instance p2, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$3;

    invoke-direct {p2, p0}, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$3;-><init>(Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;)V

    invoke-virtual {p1, p2}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 209
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->videoView:Landroid/widget/VideoView;

    new-instance p2, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$4;

    invoke-direct {p2, p0}, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$4;-><init>(Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;)V

    invoke-virtual {p1, p2}, Landroid/widget/VideoView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 218
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->videoView:Landroid/widget/VideoView;

    new-instance p2, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$5;

    invoke-direct {p2, p0}, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$5;-><init>(Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;)V

    invoke-virtual {p1, p2}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 226
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->videoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    return-void
.end method

.method private showProgress()V
    .registers 3

    .line 176
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 177
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->bgProgress:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    const/4 v0, 0x1

    .line 347
    iput-boolean v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->isDissmissing:Z

    .line 349
    :try_start_3
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 350
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->suspend()V

    .line 351
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->videoView:Landroid/widget/VideoView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setBackgroundColor(I)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_14} :catch_15

    goto :goto_19

    :catch_15
    move-exception v0

    .line 353
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 359
    :goto_19
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method

.method protected getImplLayoutId()I
    .registers 2

    .line 94
    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_pop_fullscreen_help_center:I

    return v0
.end method

.method protected initPopupContent()V
    .registers 4

    .line 99
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;->initPopupContent()V

    .line 100
    sget v0, Lcom/codemao/creativecenter/R$id;->rv:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->rv:Landroidx/recyclerview/widget/RecyclerView;

    .line 101
    sget v0, Lcom/codemao/creativecenter/R$id;->view_bg2:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->bgProgress:Landroid/view/View;

    .line 102
    sget v0, Lcom/codemao/creativecenter/R$id;->tv_help:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->tvHelp:Landroid/widget/TextView;

    .line 103
    sget v0, Lcom/codemao/creativecenter/R$id;->progress:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->progressBar:Landroid/widget/ProgressBar;

    .line 104
    sget v0, Lcom/codemao/creativecenter/R$id;->bg:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->bg:Landroid/view/View;

    .line 105
    sget v0, Lcom/codemao/creativecenter/R$id;->ll_title:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->llTittle:Landroid/widget/LinearLayout;

    .line 106
    sget v0, Lcom/codemao/creativecenter/R$id;->video_player:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->videoView:Landroid/widget/VideoView;

    .line 107
    sget v0, Lcom/codemao/creativecenter/R$id;->close:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->ivClose:Landroid/view/View;

    .line 108
    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->initSize()V

    .line 110
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 112
    new-instance v0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoListAdapter;

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->mdatas:Ljava/util/List;

    iget-boolean v2, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->fromCreate:Z

    invoke-direct {v0, v1, p0, v2}, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoListAdapter;-><init>(Ljava/util/List;Landroid/view/View$OnClickListener;Z)V

    .line 114
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 116
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$1;-><init>(Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 122
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 124
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->rv:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->currentPositon:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 126
    iget-boolean v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->fromCreate:Z

    if-nez v0, :cond_9e

    .line 127
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$2;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$2;-><init>(Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_9e
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 166
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->currentPositon:I

    .line 167
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v1

    invoke-static {}, Lcom/codemao/creativestore/bean/CreativeReportParams;->create()Lcom/codemao/creativestore/bean/CreativeReportParams;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->mdatas:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;

    iget-object v0, v0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/codemao/creativestore/bean/CreativeReportParams;->setHelpName(Ljava/lang/String;)Lcom/codemao/creativestore/bean/CreativeReportParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/CreativeReportParams;->map()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "帮助中心"

    const-string/jumbo v3, "帮助-查看知识"

    invoke-virtual {v1, v2, v3, v0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 168
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->download:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_3a

    .line 169
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 171
    :cond_3a
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->mdatas:Ljava/util/List;

    iget v1, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->currentPositon:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;

    invoke-direct {p0, p1, v0}, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->playVideo(Landroid/view/View;Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;)V

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 338
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_f

    .line 339
    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 340
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->seekpotisiton:I

    :cond_f
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 323
    iget-boolean v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->isDissmissing:Z

    if-eqz v0, :cond_5

    return-void

    .line 326
    :cond_5
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_1b

    .line 327
    iget v1, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->seekpotisiton:I

    if-gtz v1, :cond_11

    .line 328
    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    goto :goto_1b

    .line 330
    :cond_11
    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 331
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->videoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->seekpotisiton:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method protected onShow()V
    .registers 3

    .line 231
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onShow()V

    .line 232
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->mdatas:Ljava/util/List;

    iget v1, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->currentPositon:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->playVideo(Landroid/view/View;Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;)V

    return-void
.end method
