.class Lcom/codemao/creativecenter/pop/ThemeDetailPop$2;
.super Ljava/lang/Object;
.source "ThemeDetailPop.java"

# interfaces
.implements Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/pop/ThemeDetailPop;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/pop/ThemeDetailPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/ThemeDetailPop;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$2;->this$0:Lcom/codemao/creativecenter/pop/ThemeDetailPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$2;->this$0:Lcom/codemao/creativecenter/pop/ThemeDetailPop;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->dismiss()V

    return-void
.end method

.method public onDrag(IFZ)V
    .registers 4

    return-void
.end method

.method public onOpen()V
    .registers 1

    return-void
.end method
