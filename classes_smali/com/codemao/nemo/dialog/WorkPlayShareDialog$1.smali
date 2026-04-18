.class Lcom/codemao/nemo/dialog/WorkPlayShareDialog$1;
.super Ljava/lang/Object;
.source "WorkPlayShareDialog.java"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


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

    .line 111
    iput-object p2, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog$1;->val$shareListener:Lcom/codemao/nemo/dialog/WorkPlayShareDialog$ShareListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog$1;->val$shareListener:Lcom/codemao/nemo/dialog/WorkPlayShareDialog$ShareListener;

    if-eqz v0, :cond_7

    .line 130
    invoke-interface {v0}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog$ShareListener;->cancle()V

    :cond_7
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 2

    .line 114
    iget-object p1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog$1;->val$shareListener:Lcom/codemao/nemo/dialog/WorkPlayShareDialog$ShareListener;

    if-eqz p1, :cond_7

    .line 115
    invoke-interface {p1}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog$ShareListener;->sucssess()V

    :cond_7
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .registers 2

    .line 122
    iget-object p1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog$1;->val$shareListener:Lcom/codemao/nemo/dialog/WorkPlayShareDialog$ShareListener;

    if-eqz p1, :cond_7

    .line 123
    invoke-interface {p1}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog$ShareListener;->fail()V

    :cond_7
    return-void
.end method

.method public onWarning(I)V
    .registers 2

    .line 136
    iget-object p1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog$1;->val$shareListener:Lcom/codemao/nemo/dialog/WorkPlayShareDialog$ShareListener;

    if-eqz p1, :cond_7

    .line 137
    invoke-interface {p1}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog$ShareListener;->fail()V

    :cond_7
    return-void
.end method
