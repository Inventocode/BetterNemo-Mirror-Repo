.class Lcom/ljwx/baseapp/keyboard/KeyboardHeightProvider$1;
.super Ljava/lang/Object;
.source "KeyboardHeightProvider.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ljwx/baseapp/keyboard/KeyboardHeightProvider;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ljwx/baseapp/keyboard/KeyboardHeightProvider;


# direct methods
.method constructor <init>(Lcom/ljwx/baseapp/keyboard/KeyboardHeightProvider;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/ljwx/baseapp/keyboard/KeyboardHeightProvider$1;->this$0:Lcom/ljwx/baseapp/keyboard/KeyboardHeightProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/ljwx/baseapp/keyboard/KeyboardHeightProvider$1;->this$0:Lcom/ljwx/baseapp/keyboard/KeyboardHeightProvider;

    invoke-static {v0}, Lcom/ljwx/baseapp/keyboard/KeyboardHeightProvider;->access$000(Lcom/ljwx/baseapp/keyboard/KeyboardHeightProvider;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 103
    iget-object v0, p0, Lcom/ljwx/baseapp/keyboard/KeyboardHeightProvider$1;->this$0:Lcom/ljwx/baseapp/keyboard/KeyboardHeightProvider;

    invoke-static {v0}, Lcom/ljwx/baseapp/keyboard/KeyboardHeightProvider;->access$100(Lcom/ljwx/baseapp/keyboard/KeyboardHeightProvider;)V

    :cond_d
    return-void
.end method
