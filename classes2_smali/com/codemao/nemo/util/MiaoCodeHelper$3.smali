.class Lcom/codemao/nemo/util/MiaoCodeHelper$3;
.super Ljava/lang/Thread;
.source "MiaoCodeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/util/MiaoCodeHelper;->showMiaoCode(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/util/MiaoCodeHelper;Ljava/lang/String;)V
    .registers 3

    .line 111
    iput-object p1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$3;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    iput-object p2, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$3;->val$token:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$3;->val$token:Ljava/lang/String;

    new-instance v1, Lcom/codemao/nemo/util/MiaoCodeHelper$3$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/util/MiaoCodeHelper$3$1;-><init>(Lcom/codemao/nemo/util/MiaoCodeHelper$3;)V

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/BcmHelper;->getMiaoCode(Ljava/lang/String;Lcom/codemao/nemo/listener/GetMiaoCodeCallBack;)V

    return-void
.end method
