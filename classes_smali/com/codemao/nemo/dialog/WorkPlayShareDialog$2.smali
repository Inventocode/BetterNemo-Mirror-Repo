.class Lcom/codemao/nemo/dialog/WorkPlayShareDialog$2;
.super Ljava/lang/Object;
.source "WorkPlayShareDialog.java"

# interfaces
.implements Lcn/codemao/android/share/interfaces/IshareResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/WorkPlayShareDialog;-><init>(Landroid/app/Activity;IIIILjava/lang/String;Landroid/graphics/Bitmap;Lcom/codemao/nemo/dialog/WorkPlayShareDialog$ShareListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$shareListener:Lcom/codemao/nemo/dialog/WorkPlayShareDialog$ShareListener;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/WorkPlayShareDialog;Lcom/codemao/nemo/dialog/WorkPlayShareDialog$ShareListener;)V
    .registers 3

    .line 142
    iput-object p2, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog$2;->val$shareListener:Lcom/codemao/nemo/dialog/WorkPlayShareDialog$ShareListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;)V
    .registers 2

    .line 152
    iget-object p1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog$2;->val$shareListener:Lcom/codemao/nemo/dialog/WorkPlayShareDialog$ShareListener;

    if-eqz p1, :cond_7

    .line 153
    invoke-interface {p1}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog$ShareListener;->cancle()V

    :cond_7
    return-void
.end method

.method public onFailure(Ljava/lang/String;)V
    .registers 2

    .line 159
    iget-object p1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog$2;->val$shareListener:Lcom/codemao/nemo/dialog/WorkPlayShareDialog$ShareListener;

    if-eqz p1, :cond_7

    .line 160
    invoke-interface {p1}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog$ShareListener;->fail()V

    :cond_7
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 2

    .line 145
    iget-object p1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog$2;->val$shareListener:Lcom/codemao/nemo/dialog/WorkPlayShareDialog$ShareListener;

    if-eqz p1, :cond_7

    .line 146
    invoke-interface {p1}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog$ShareListener;->sucssess()V

    :cond_7
    return-void
.end method
