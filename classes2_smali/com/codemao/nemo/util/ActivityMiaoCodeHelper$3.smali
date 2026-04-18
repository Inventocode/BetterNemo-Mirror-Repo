.class Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$3;
.super Ljava/lang/Object;
.source "ActivityMiaoCodeHelper.java"

# interfaces
.implements Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$ShowMiaoCodeCallback;


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

.field final synthetic val$activity:Landroid/content/Context;

.field final synthetic val$miaoCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 100
    iput-object p1, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$3;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    iput-object p2, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$3;->val$activity:Landroid/content/Context;

    iput-object p3, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$3;->val$miaoCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    .line 111
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$3;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->access$100(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 112
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$3;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->access$402(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;Z)Z

    .line 113
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$3;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->access$300(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;)V

    return-void
.end method

.method public open()V
    .registers 3

    .line 118
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$3;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->access$100(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->showByType(I)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    .line 119
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$3;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->access$200(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;Z)V

    return-void
.end method

.method public openKn(Ljava/lang/String;)V
    .registers 8

    const-string p1, "miaocode"

    const-string v0, "activityHelper,openKn"

    .line 124
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object p1, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$3;->val$activity:Landroid/content/Context;

    invoke-static {p1}, Lcom/blankj/utilcode/util/ActivityUtils;->getActivityByContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 126
    iget-object p1, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$3;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$3;->val$miaoCode:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->access$500(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_23

    if-eqz v1, :cond_23

    .line 128
    sget-object v0, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity;->Companion:Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity$Companion;

    const/4 v3, 0x0

    const-string v4, "KN"

    const-string v5, "normal"

    invoke-virtual/range {v0 .. v5}, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity$Companion;->startActivityMiaoCode(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_23
    iget-object p1, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$3;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->access$100(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public showLater()V
    .registers 3

    .line 103
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$3;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->access$100(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 104
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$3;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->access$200(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;Z)V

    .line 105
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$3;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->access$300(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;)V

    return-void
.end method
