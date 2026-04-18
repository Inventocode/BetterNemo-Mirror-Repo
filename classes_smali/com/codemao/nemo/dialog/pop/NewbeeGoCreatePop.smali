.class public Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;
.super Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;
.source "NewbeeGoCreatePop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop$GoCreateCallback;
    }
.end annotation


# instance fields
.field private cardView:Landroidx/cardview/widget/CardView;

.field private goCreateCallback:Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop$GoCreateCallback;

.field private isDissmissing:Z

.field private ivClose:Landroid/widget/ImageView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private seekpotisiton:I

.field private tvGO:Landroid/widget/TextView;

.field private videoPath:Ljava/lang/String;

.field private videoView:Lcom/codemao/nemo/view/LocalVideoVIew;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop$GoCreateCallback;Ljava/lang/String;)V
    .registers 4

    .line 51
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->isDissmissing:Z

    const/16 p1, -0x63

    .line 46
    iput p1, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->seekpotisiton:I

    .line 52
    iput-object p2, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->goCreateCallback:Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop$GoCreateCallback;

    .line 53
    iput-object p3, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->videoPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;)Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop$GoCreateCallback;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->goCreateCallback:Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop$GoCreateCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;)Landroid/widget/TextView;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->tvGO:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;)Landroid/widget/ProgressBar;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private playVideo()V
    .registers 4

    .line 107
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->videoView:Lcom/codemao/nemo/view/LocalVideoVIew;

    if-eqz v0, :cond_8b

    iget-boolean v1, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->isDissmissing:Z

    if-eqz v1, :cond_a

    goto/16 :goto_8b

    .line 110
    :cond_a
    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 111
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->videoView:Lcom/codemao/nemo/view/LocalVideoVIew;

    invoke-virtual {v0}, Landroid/widget/VideoView;->suspend()V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playVideo--videoPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->videoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/codemao/android/sketch/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->videoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_72

    .line 114
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->videoPath:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_67

    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->videoPath:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    goto :goto_67

    .line 117
    :cond_45
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->videoPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_5d

    .line 120
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.codemao.nemo.nemo.fileProvider"

    invoke-static {v1, v2, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_61

    .line 122
    :cond_5d
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 124
    :goto_61
    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->videoView:Lcom/codemao/nemo/view/LocalVideoVIew;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    goto :goto_72

    .line 115
    :cond_67
    :goto_67
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->videoView:Lcom/codemao/nemo/view/LocalVideoVIew;

    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->videoPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 130
    :cond_72
    :goto_72
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->videoView:Lcom/codemao/nemo/view/LocalVideoVIew;

    new-instance v1, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop$3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop$3;-><init>(Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 137
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->videoView:Lcom/codemao/nemo/view/LocalVideoVIew;

    new-instance v1, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop$4;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop$4;-><init>(Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 143
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->videoView:Lcom/codemao/nemo/view/LocalVideoVIew;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    :cond_8b
    :goto_8b
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    const/4 v0, 0x1

    .line 184
    iput-boolean v0, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->isDissmissing:Z

    .line 186
    :try_start_3
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->videoView:Lcom/codemao/nemo/view/LocalVideoVIew;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 187
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->videoView:Lcom/codemao/nemo/view/LocalVideoVIew;

    invoke-virtual {v0}, Landroid/widget/VideoView;->suspend()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception v0

    .line 190
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 192
    :goto_12
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method

.method protected getImplLayoutId()I
    .registers 2

    .line 58
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f0d02de

    goto :goto_d

    :cond_a
    const v0, 0x7f0d02dd

    :goto_d
    return v0
.end method

.method protected initPopupContent()V
    .registers 3

    .line 68
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;->initPopupContent()V

    const v0, 0x7f0a0979

    .line 69
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/LocalVideoVIew;

    iput-object v0, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->videoView:Lcom/codemao/nemo/view/LocalVideoVIew;

    const v0, 0x7f0a0102

    .line 70
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->cardView:Landroidx/cardview/widget/CardView;

    const v0, 0x7f0a037b

    .line 71
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->ivClose:Landroid/widget/ImageView;

    const v0, 0x7f0a05c8

    .line 72
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->progressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f0a085a

    .line 73
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->tvGO:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->ivClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop$1;-><init>(Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->tvGO:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop$2;-><init>(Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-virtual {p0}, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->initSize()V

    return-void
.end method

.method public initSize()V
    .registers 6

    .line 197
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result v0

    .line 198
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenHeight()I

    move-result v1

    .line 201
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v2

    if-eqz v2, :cond_31

    const/high16 v2, 0x43860000  # 268.0f

    .line 202
    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    sub-int/2addr v0, v2

    mul-int/lit16 v2, v0, 0x2ed

    .line 203
    div-int/lit16 v2, v2, 0x1f4

    const/high16 v3, 0x430c0000  # 140.0f

    .line 204
    invoke-static {v3}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v3

    const/high16 v4, 0x42a00000  # 80.0f

    invoke-static {v4}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v4

    add-int/2addr v3, v4

    add-int v4, v2, v3

    if-le v4, v1, :cond_53

    sub-int v2, v1, v3

    mul-int/lit16 v0, v2, 0x1f4

    .line 207
    div-int/lit16 v0, v0, 0x2ed

    goto :goto_53

    :cond_31
    const/high16 v2, 0x42980000  # 76.0f

    .line 210
    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    sub-int/2addr v0, v2

    mul-int/lit16 v2, v0, 0x2ed

    .line 211
    div-int/lit16 v2, v2, 0x1f4

    const/high16 v3, 0x43040000  # 132.0f

    .line 212
    invoke-static {v3}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v3

    const/high16 v4, 0x43060000  # 134.0f

    invoke-static {v4}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v4

    add-int/2addr v3, v4

    add-int v4, v2, v3

    if-le v4, v1, :cond_53

    sub-int v2, v1, v3

    mul-int/lit16 v0, v2, 0x1f4

    .line 215
    div-int/lit16 v0, v0, 0x2ed

    .line 218
    :cond_53
    :goto_53
    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->cardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    add-int/lit8 v0, v0, -0x2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 219
    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->cardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 220
    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->videoView:Lcom/codemao/nemo/view/LocalVideoVIew;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 221
    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->videoView:Lcom/codemao/nemo/view/LocalVideoVIew;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 222
    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->videoView:Lcom/codemao/nemo/view/LocalVideoVIew;

    invoke-virtual {v1, v0, v2}, Lcom/codemao/nemo/view/LocalVideoVIew;->setSize(II)V

    return-void
.end method

.method protected onDismiss()V
    .registers 1

    .line 63
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onDismiss()V

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->videoView:Lcom/codemao/nemo/view/LocalVideoVIew;

    if-eqz v0, :cond_f

    .line 176
    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 177
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->videoView:Lcom/codemao/nemo/view/LocalVideoVIew;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->seekpotisiton:I

    :cond_f
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 161
    iget-boolean v0, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->isDissmissing:Z

    if-eqz v0, :cond_5

    return-void

    .line 164
    :cond_5
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->videoView:Lcom/codemao/nemo/view/LocalVideoVIew;

    if-eqz v0, :cond_1b

    .line 165
    iget v1, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->seekpotisiton:I

    if-gtz v1, :cond_11

    .line 166
    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    goto :goto_1b

    .line 168
    :cond_11
    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 169
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->videoView:Lcom/codemao/nemo/view/LocalVideoVIew;

    iget v1, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->seekpotisiton:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method protected onShow()V
    .registers 3

    .line 149
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onShow()V

    .line 150
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->playVideo()V

    .line 151
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->videoView:Lcom/codemao/nemo/view/LocalVideoVIew;

    if-eqz v0, :cond_e

    const/4 v1, 0x0

    .line 152
    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 154
    :cond_e
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->cardView:Landroidx/cardview/widget/CardView;

    if-eqz v0, :cond_16

    const/4 v1, 0x0

    .line 155
    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    :cond_16
    return-void
.end method

.method public resetStatus()V
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->tvGO:Landroid/widget/TextView;

    const-string/jumbo v1, "我要试试"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->tvGO:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 102
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public setProgress(I)V
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_7

    .line 95
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_7
    return-void
.end method
