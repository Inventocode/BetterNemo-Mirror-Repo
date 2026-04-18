.class Lcom/codemao/nemo/dialog/ShareCardDialogV3$2;
.super Ljava/lang/Object;
.source "ShareCardDialogV3.java"

# interfaces
.implements Lcn/codemao/android/share/interfaces/IshareResult;


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

    .line 197
    iput-object p2, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3$2;->val$shareListener:Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;)V
    .registers 2

    .line 207
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3$2;->val$shareListener:Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;

    if-eqz p1, :cond_7

    .line 208
    invoke-interface {p1}, Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;->cancle()V

    :cond_7
    return-void
.end method

.method public onFailure(Ljava/lang/String;)V
    .registers 2

    .line 214
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3$2;->val$shareListener:Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;

    if-eqz p1, :cond_7

    .line 215
    invoke-interface {p1}, Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;->fail()V

    :cond_7
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 2

    .line 200
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3$2;->val$shareListener:Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;

    if-eqz p1, :cond_7

    .line 201
    invoke-interface {p1}, Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;->sucssess()V

    :cond_7
    return-void
.end method
