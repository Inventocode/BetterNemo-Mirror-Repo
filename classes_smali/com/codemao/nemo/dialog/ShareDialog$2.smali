.class Lcom/codemao/nemo/dialog/ShareDialog$2;
.super Ljava/lang/Object;
.source "ShareDialog.java"

# interfaces
.implements Lcn/codemao/android/share/interfaces/IshareResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/ShareDialog;->share(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/ShareDialog;)V
    .registers 2

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onFailure(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
