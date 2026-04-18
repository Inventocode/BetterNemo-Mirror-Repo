.class Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$4;
.super Ljava/lang/Object;
.source "ActivityMiaoCodeHelper.java"

# interfaces
.implements Lcom/codemao/nemo/listener/GetMiaoCodeCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->showMiaoCode(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;)V
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$4;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onSuccess(Lcom/codemao/nemo/bean/GetMiaoCode;)V
    .registers 3

    .line 141
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$4;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->access$600(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$4;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->access$100(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_1e

    .line 144
    :cond_11
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$4;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    iget-object p1, p1, Lcom/codemao/nemo/bean/GetMiaoCode;->data:Lcom/codemao/nemo/bean/MiaoCode;

    invoke-static {v0, p1}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->access$702(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;Lcom/codemao/nemo/bean/MiaoCode;)Lcom/codemao/nemo/bean/MiaoCode;

    .line 145
    iget-object p1, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$4;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->access$200(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;Z)V

    :cond_1e
    :goto_1e
    return-void
.end method
