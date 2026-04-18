.class Lcom/codemao/nemo/MainActivityV2$4$1;
.super Lcom/nemo/commonui/xpopup/interfaces/SimpleCallback;
.source "MainActivityV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/MainActivityV2$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/MainActivityV2$4;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/MainActivityV2$4;)V
    .registers 2

    .line 482
    iput-object p1, p0, Lcom/codemao/nemo/MainActivityV2$4$1;->this$1:Lcom/codemao/nemo/MainActivityV2$4;

    invoke-direct {p0}, Lcom/nemo/commonui/xpopup/interfaces/SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 2

    .line 485
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/interfaces/SimpleCallback;->onDismiss()V

    .line 486
    iget-object v0, p0, Lcom/codemao/nemo/MainActivityV2$4$1;->this$1:Lcom/codemao/nemo/MainActivityV2$4;

    iget-object v0, v0, Lcom/codemao/nemo/MainActivityV2$4;->this$0:Lcom/codemao/nemo/MainActivityV2;

    invoke-static {v0}, Lcom/codemao/nemo/MainActivityV2;->access$300(Lcom/codemao/nemo/MainActivityV2;)V

    return-void
.end method
