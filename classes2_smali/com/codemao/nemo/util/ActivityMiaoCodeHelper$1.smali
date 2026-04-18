.class Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$1;
.super Ljava/lang/Object;
.source "ActivityMiaoCodeHelper.java"

# interfaces
.implements Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$CloseCallback;


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

    .line 82
    iput-object p1, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$1;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$1;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->access$000(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;)V

    return-void
.end method
