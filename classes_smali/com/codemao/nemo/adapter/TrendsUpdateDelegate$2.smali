.class Lcom/codemao/nemo/adapter/TrendsUpdateDelegate$2;
.super Ljava/lang/Object;
.source "TrendsUpdateDelegate.java"

# interfaces
.implements Lcom/codemao/nemo/view/ExpandTextView$OnExpandOrShrinkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/TrendsUpdateDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/TrendsUpdateDelegate;)V
    .registers 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpand()V
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "动态页-点击展开"

    .line 82
    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public onShrink()V
    .registers 1

    return-void
.end method
