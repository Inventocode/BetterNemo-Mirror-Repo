.class public Lcom/codemao/nemo/activity/WorkPlayLandActivity;
.super Lcom/codemao/nemo/activity/BaseWorkPlayActivity;
.source "WorkPlayLandActivity.java"


# instance fields
.field private workPlayLandShareDialog:Lcom/codemao/nemo/dialog/WorkPlayLandShareDialog;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/activity/WorkPlayLandActivity;)Lcom/giu/xzz/mvp/BasePresenter;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    return-object p0
.end method

.method public static gotoPlay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/codemao/creativecenter/utils/bcm/bean/Abilities;Ljava/lang/String;)V
    .registers 12

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/nemo/activity/WorkPlayLandActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    sget v1, Lcom/codemao/nemo/MainApplication;->chromeVersion:I

    const/16 v2, 0x31

    if-ge v1, v2, :cond_13

    const/4 v1, 0x1

    const-string v2, "isX5"

    .line 59
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_13
    const-string v1, "url"

    .line 61
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "title"

    .line 62
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "imageUrl"

    .line 63
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "shareUrl"

    .line 64
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "workId"

    .line 65
    invoke-virtual {v0, p1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "workType"

    .line 66
    invoke-virtual {v0, p1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p7, :cond_45

    .line 68
    invoke-virtual {p7}, Lcom/codemao/creativecenter/utils/bcm/bean/Abilities;->isIs_praised()Z

    move-result p1

    const-string p2, "isPraised"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    invoke-virtual {p7}, Lcom/codemao/creativecenter/utils/bcm/bean/Abilities;->isIs_collected()Z

    move-result p1

    const-string p2, "isCollected"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    :cond_45
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showShareDialog()V
    .registers 11

    .line 129
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPlayLandActivity;->workPlayLandShareDialog:Lcom/codemao/nemo/dialog/WorkPlayLandShareDialog;

    if-nez v0, :cond_36

    .line 130
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->flWeb:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v3

    .line 131
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->flWeb:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    .line 132
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->flWeb:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v4

    .line 133
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->flWeb:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v6

    .line 134
    new-instance v0, Lcom/codemao/nemo/dialog/WorkPlayLandShareDialog;

    iget-object v7, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->fileName:Ljava/lang/String;

    iget-object v8, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->screenBitmap:Landroid/graphics/Bitmap;

    new-instance v9, Lcom/codemao/nemo/activity/WorkPlayLandActivity$1;

    invoke-direct {v9, p0}, Lcom/codemao/nemo/activity/WorkPlayLandActivity$1;-><init>(Lcom/codemao/nemo/activity/WorkPlayLandActivity;)V

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/codemao/nemo/dialog/WorkPlayLandShareDialog;-><init>(Landroid/app/Activity;IIIILjava/lang/String;Landroid/graphics/Bitmap;Lcom/codemao/nemo/dialog/WorkPlayShareDialog$ShareListener;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/WorkPlayLandActivity;->workPlayLandShareDialog:Lcom/codemao/nemo/dialog/WorkPlayLandShareDialog;

    .line 156
    new-instance v1, Lcom/codemao/nemo/activity/WorkPlayLandActivity$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/WorkPlayLandActivity$2;-><init>(Lcom/codemao/nemo/activity/WorkPlayLandActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_36
    return-void
.end method


# virtual methods
.method beforeLoad()V
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivWorkCover:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->flWeb:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    if-eqz v0, :cond_17

    .line 80
    iget-object v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/dsbridge/DWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_20

    .line 81
    :cond_17
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_GameX5:Lcom/codemao/nemo/view/X5DWebView;

    if-eqz v0, :cond_20

    .line 82
    iget-object v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/X5DWebView;->loadUrl(Ljava/lang/String;)V

    :cond_20
    :goto_20
    return-void
.end method

.method protected contentViewId()I
    .registers 2

    .line 48
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isLargePad:Z

    if-eqz v0, :cond_c

    const v0, 0x7f0d0177

    return v0

    :cond_c
    const v0, 0x7f0d0174

    return v0
.end method

.method public createScreenShot(Ljava/lang/String;)V
    .registers 15

    const-string v0, ".jpg"

    const-string v1, ","

    .line 174
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->stringToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->screenBitmap:Landroid/graphics/Bitmap;

    .line 175
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPlayLandActivity;->workPlayLandShareDialog:Lcom/codemao/nemo/dialog/WorkPlayLandShareDialog;

    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->isQQOrWXInstalled()Z

    move-result p1

    .line 177
    iget-object v2, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->screenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->qrWitdh:I

    mul-int v2, v2, v3

    iget-object v3, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->screenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/2addr v2, v3

    .line 178
    iget v3, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->qrHeight:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->finalHeight:I

    if-eqz p1, :cond_38

    .line 180
    iget v4, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->qrWitdh:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_40

    .line 182
    :cond_38
    iget v3, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->qrWitdh:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_40
    const/high16 v4, 0x41000000  # 8.0f

    .line 184
    invoke-static {v4}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v4

    .line 185
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v6, -0x1

    .line 186
    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 187
    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->screenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->screenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v9, 0x0

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 188
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, v4

    iget v10, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->qrWitdh:I

    sub-int/2addr v10, v4

    int-to-float v4, v10

    int-to-float v2, v2

    invoke-direct {v7, v8, v8, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 189
    iget-object v4, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->screenBitmap:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    invoke-virtual {v5, v4, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    if-eqz p1, :cond_b7

    .line 192
    iget-object v4, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->shareUrl:Ljava/lang/String;

    const/16 v6, 0x84

    invoke-static {v4, v6}, Lcom/codemao/nemo/util/QrcodeUtils;->createQRCodeWithNoPadding(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_85

    const-string/jumbo p1, "生成二维码失败，请重试！"

    .line 194
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 197
    :cond_85
    iget-object v6, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivQrCode:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 198
    iget-object v6, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->rlQrcode:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->setDrawingCacheEnabled(Z)V

    .line 199
    iget-object v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->rlQrcode:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 200
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v6, v9, v9, v7, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 201
    new-instance v7, Landroid/graphics/RectF;

    const/4 v10, 0x0

    iget v11, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->qrWitdh:I

    int-to-float v11, v11

    iget v12, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->finalHeight:I

    int-to-float v12, v12

    invoke-direct {v7, v10, v2, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 202
    invoke-virtual {v5, v1, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 203
    iget-object v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->rlQrcode:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->setDrawingCacheEnabled(Z)V

    goto :goto_b8

    :cond_b7
    move-object v4, v8

    .line 206
    :goto_b8
    :try_start_b8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->basePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->fileName:Ljava/lang/String;

    .line 207
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_df

    const-string/jumbo p1, "请传入目标目录"

    .line 208
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 212
    :cond_df
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->fileName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_f8

    .line 215
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 218
    :cond_f8
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_101

    .line 219
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 222
    :cond_101
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 223
    iget-object v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x50

    if-eqz v0, :cond_116

    .line 224
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v3, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_11b

    .line 226
    :cond_116
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v3, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 228
    :goto_11b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 229
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 230
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivQrCode:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 231
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_12f

    .line 232
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_12f
    if-eqz v4, :cond_13a

    .line 234
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_13a

    .line 235
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 238
    :cond_13a
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->hideLoadingDialog()V

    if-eqz p1, :cond_156

    .line 240
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPlayLandActivity;->workPlayLandShareDialog:Lcom/codemao/nemo/dialog/WorkPlayLandShareDialog;

    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->setLocalImageUrl(Ljava/lang/String;)Lcom/codemao/nemo/dialog/WorkPlayShareDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->screenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->setScreenBitmap(Landroid/graphics/Bitmap;)Lcom/codemao/nemo/dialog/WorkPlayShareDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->show()V

    .line 241
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPlayLandActivity;->workPlayLandShareDialog:Lcom/codemao/nemo/dialog/WorkPlayLandShareDialog;

    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->show()V

    goto :goto_199

    :cond_156
    const-string/jumbo p1, "已保存到相册"

    .line 243
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V
    :try_end_15c
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_15c} :catch_15d

    goto :goto_199

    :catch_15d
    move-exception p1

    .line 246
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->hideLoadingDialog()V

    .line 247
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    if-eqz v0, :cond_168

    .line 248
    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 249
    :cond_168
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_GameX5:Lcom/codemao/nemo/view/X5DWebView;

    if-eqz v0, :cond_16f

    .line 250
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->onResume()V

    .line 251
    :cond_16f
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1202c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 252
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 253
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivQrCode:Landroid/widget/ImageView;

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 254
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_18e

    .line 255
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_18e
    if-eqz v4, :cond_199

    .line 257
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_199

    .line 258
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_199
    :goto_199
    return-void
.end method

.method getScreenShoot(Landroid/view/View;)V
    .registers 4

    if-eqz p1, :cond_f

    .line 91
    iget-object p1, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast p1, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-virtual {p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->getReportParams()Ljava/util/Map;

    move-result-object p1

    const-string v0, "Player页-点击截图"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 93
    :cond_f
    iget-boolean p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isLoadFail:Z

    if-eqz p1, :cond_1a

    const-string/jumbo p1, "作品加载失败"

    .line 94
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 97
    :cond_1a
    iget-boolean p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isLoadFinish:Z

    if-nez p1, :cond_2f

    .line 98
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_28

    .line 99
    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    :cond_28
    const-string/jumbo p1, "作品加载中，请稍后"

    .line 102
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 106
    :cond_2f
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->permissions:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/codemao/nemo/util/PermissionUtils;->checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5b

    .line 107
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->showLoadingDialog()V

    .line 108
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkPlayLandActivity;->showShareDialog()V

    .line 109
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPlayLandActivity;->workPlayLandShareDialog:Lcom/codemao/nemo/dialog/WorkPlayLandShareDialog;

    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->isQQOrWXInstalled()Z

    move-result p1

    if-eqz p1, :cond_53

    .line 111
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    if-eqz p1, :cond_4c

    .line 112
    invoke-virtual {p1}, Landroid/webkit/WebView;->onPause()V

    .line 114
    :cond_4c
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_GameX5:Lcom/codemao/nemo/view/X5DWebView;

    if-eqz p1, :cond_53

    .line 115
    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebView;->onPause()V

    .line 118
    :cond_53
    iget-object p1, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast p1, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-virtual {p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->getScreenShootFromWeb()V

    goto :goto_65

    :cond_5b
    const/16 p1, 0x67

    .line 120
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->permissions:[Ljava/lang/String;

    const-string/jumbo v1, "需要读写权限，请同意授权"

    invoke-static {p0, v1, p1, v0}, Lpub/devrel/easypermissions/EasyPermissions;->requestPermissions(Landroid/app/Activity;Ljava/lang/String;I[Ljava/lang/String;)V

    :goto_65
    return-void
.end method

.method public initSize()V
    .registers 5

    .line 265
    iget v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->screenHeight:I

    if-nez v0, :cond_a

    .line 266
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenHeight()I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->screenHeight:I

    .line 268
    :cond_a
    iget v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->screenWitdh:I

    if-nez v0, :cond_14

    .line 269
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->screenWitdh:I

    :cond_14
    const/high16 v0, 0x42ba0000  # 93.0f

    .line 271
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->qrHeight:I

    mul-int/lit8 v0, v0, 0x7d

    .line 272
    div-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->qrWitdh:I

    .line 273
    iget-boolean v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isLargePad:Z

    if-nez v0, :cond_76

    .line 276
    iget v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->screenWitdh:I

    mul-int/lit16 v0, v0, 0x177

    iget v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->screenHeight:I

    div-int/2addr v0, v1

    const/16 v2, 0x2df

    if-le v0, v2, :cond_76

    mul-int/lit16 v0, v1, 0x2df

    .line 278
    div-int/lit16 v0, v0, 0x177

    mul-int/lit8 v1, v1, 0x10

    .line 279
    div-int/lit8 v1, v1, 0x9

    sub-int v2, v0, v1

    .line 281
    iget-object v3, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->rlContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 282
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->flWeb:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 283
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->rlTitle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 284
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->guideImageV:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 285
    iget v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->titleHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 286
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->vLoginCover:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->titleHeight:I

    const/high16 v2, 0x42200000  # 40.0f

    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 289
    :cond_76
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->rlQrcode:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->qrWitdh:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 290
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->rlQrcode:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->qrHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .line 295
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    if-eqz v0, :cond_1c

    .line 296
    iget-boolean v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isBack:Z

    if-eqz v1, :cond_c

    .line 297
    invoke-super {p0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->onBackPressed()V

    goto :goto_37

    .line 298
    :cond_c
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 299
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_37

    .line 301
    :cond_18
    invoke-super {p0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->onBackPressed()V

    goto :goto_37

    .line 303
    :cond_1c
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_GameX5:Lcom/codemao/nemo/view/X5DWebView;

    if-eqz v0, :cond_37

    .line 304
    iget-boolean v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isBack:Z

    if-eqz v1, :cond_28

    .line 305
    invoke-super {p0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->onBackPressed()V

    goto :goto_37

    .line 306
    :cond_28
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 307
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_GameX5:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->goBack()V

    goto :goto_37

    .line 309
    :cond_34
    invoke-super {p0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->onBackPressed()V

    :cond_37
    :goto_37
    return-void
.end method
