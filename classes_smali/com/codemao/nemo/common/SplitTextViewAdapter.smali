.class public Lcom/codemao/nemo/common/SplitTextViewAdapter;
.super Ljava/lang/Object;
.source "SplitTextViewAdapter.java"


# direct methods
.method public static setCenterText(Lcom/ljwx/view/SplitTextView;Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_5

    .line 19
    invoke-virtual {p0, p1}, Lcom/ljwx/view/SplitTextView;->setTextCenter(Ljava/lang/String;)V

    :cond_5
    return-void
.end method
