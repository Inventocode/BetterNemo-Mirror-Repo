.class Lcom/codemao/nemo/view/CustomTabViewMessage$3;
.super Ljava/lang/Object;
.source "CustomTabViewMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/CustomTabViewMessage;->setTabs(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/CustomTabViewMessage;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/CustomTabViewMessage;)V
    .registers 2

    .line 306
    iput-object p1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage$3;->this$0:Lcom/codemao/nemo/view/CustomTabViewMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 309
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabViewMessage$3;->this$0:Lcom/codemao/nemo/view/CustomTabViewMessage;

    invoke-static {v0}, Lcom/codemao/nemo/view/CustomTabViewMessage;->access$300(Lcom/codemao/nemo/view/CustomTabViewMessage;)V

    return-void
.end method
