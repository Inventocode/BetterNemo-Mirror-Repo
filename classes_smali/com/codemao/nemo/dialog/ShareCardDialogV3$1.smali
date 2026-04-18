.class Lcom/codemao/nemo/dialog/ShareCardDialogV3$1;
.super Ljava/lang/Object;
.source "ShareCardDialogV3.java"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/ShareCardDialogV3;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ZZLcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$shareListener:Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/ShareCardDialogV3;Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;)V
    .registers 3

    .line 167
    iput-object p2, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3$1;->val$shareListener:Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3$1;->val$shareListener:Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;

    if-eqz v0, :cond_7

    .line 186
    invoke-interface {v0}, Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;->cancle()V

    :cond_7
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 2

    .line 170
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3$1;->val$shareListener:Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;

    if-eqz p1, :cond_7

    .line 171
    invoke-interface {p1}, Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;->sucssess()V

    :cond_7
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .registers 2

    .line 178
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3$1;->val$shareListener:Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;

    if-eqz p1, :cond_7

    .line 179
    invoke-interface {p1}, Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;->fail()V

    :cond_7
    return-void
.end method

.method public onWarning(I)V
    .registers 2

    .line 192
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3$1;->val$shareListener:Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;

    if-eqz p1, :cond_7

    .line 193
    invoke-interface {p1}, Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;->fail()V

    :cond_7
    return-void
.end method
