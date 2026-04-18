.class Lcom/codemao/nemo/view/RecyclerRelativeLayout$2;
.super Ljava/lang/Object;
.source "RecyclerRelativeLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/RecyclerRelativeLayout;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)V
    .registers 2

    .line 155
    iput-object p1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$2;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 158
    iget-object p1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$2;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {p1}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$400(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Landroid/view/GestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
