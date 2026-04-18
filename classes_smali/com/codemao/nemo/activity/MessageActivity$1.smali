.class Lcom/codemao/nemo/activity/MessageActivity$1;
.super Ljava/lang/Object;
.source "MessageActivity.java"

# interfaces
.implements Lcom/codemao/nemo/view/CustomTabViewMessage$OnTabScrolledListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/MessageActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/MessageActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/MessageActivity;)V
    .registers 2

    .line 111
    iput-object p1, p0, Lcom/codemao/nemo/activity/MessageActivity$1;->this$0:Lcom/codemao/nemo/activity/MessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .registers 4

    .line 114
    iget-object v0, p0, Lcom/codemao/nemo/activity/MessageActivity$1;->this$0:Lcom/codemao/nemo/activity/MessageActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/codemao/nemo/activity/MessageActivity;->access$000(Lcom/codemao/nemo/activity/MessageActivity;II)V

    return-void
.end method
