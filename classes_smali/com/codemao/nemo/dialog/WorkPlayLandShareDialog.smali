.class public Lcom/codemao/nemo/dialog/WorkPlayLandShareDialog;
.super Lcom/codemao/nemo/dialog/WorkPlayShareDialog;
.source "WorkPlayLandShareDialog.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;IIIILjava/lang/String;Landroid/graphics/Bitmap;Lcom/codemao/nemo/dialog/WorkPlayShareDialog$ShareListener;)V
    .registers 9

    .line 61
    invoke-direct/range {p0 .. p8}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;-><init>(Landroid/app/Activity;IIIILjava/lang/String;Landroid/graphics/Bitmap;Lcom/codemao/nemo/dialog/WorkPlayShareDialog$ShareListener;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .registers 2

    const v0, 0x7f0d0356

    return v0
.end method

.method public initSize()V
    .registers 8

    .line 68
    iget-object v0, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->screenBitmap:Landroid/graphics/Bitmap;

    const/16 v1, 0x1c2

    const/16 v2, 0x320

    if-eqz v0, :cond_13

    .line 69
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 70
    iget-object v3, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->screenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    goto :goto_17

    :cond_13
    const/16 v0, 0x320

    const/16 v3, 0x1c2

    :goto_17
    if-eqz v0, :cond_1e

    if-nez v3, :cond_1c

    goto :goto_1e

    :cond_1c
    move v2, v0

    move v1, v3

    .line 77
    :cond_1e
    :goto_1e
    iget v0, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->screenHeight:I

    mul-int/lit16 v3, v0, 0xf9

    div-int/lit16 v3, v3, 0x177

    const/high16 v4, 0x43180000  # 152.0f

    .line 78
    invoke-static {v4}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v5

    sub-int/2addr v0, v5

    if-le v3, v0, :cond_35

    .line 79
    iget v0, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->screenHeight:I

    invoke-static {v4}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v3

    sub-int v3, v0, v3

    :cond_35
    mul-int v0, v3, v2

    .line 81
    div-int/2addr v0, v1

    .line 83
    iget v4, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->screenWitdh:I

    const/high16 v5, 0x42c80000  # 100.0f

    invoke-static {v5}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v6

    sub-int/2addr v4, v6

    if-le v0, v4, :cond_4e

    .line 84
    iget v0, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->screenWitdh:I

    invoke-static {v5}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v3

    sub-int/2addr v0, v3

    mul-int v1, v1, v0

    .line 85
    div-int v3, v1, v2

    :cond_4e
    const/high16 v1, 0x42f00000  # 120.0f

    .line 87
    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    invoke-virtual {p0, v1, v0, v3}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->caculateAnimPositon(III)V

    return-void
.end method
