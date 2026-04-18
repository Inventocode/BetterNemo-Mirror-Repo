.class Lcom/codemao/creativecenter/pop/FullScreenEditPop$1;
.super Ljava/lang/Object;
.source "FullScreenEditPop.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/pop/FullScreenEditPop;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)V
    .registers 2

    .line 176
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$1;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    .line 189
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$1;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$000(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
