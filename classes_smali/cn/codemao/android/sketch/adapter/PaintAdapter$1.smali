.class Lcn/codemao/android/sketch/adapter/PaintAdapter$1;
.super Ljava/lang/Object;
.source "PaintAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/adapter/PaintAdapter;->onBindViewHolder(Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/adapter/PaintAdapter;

.field final synthetic val$holder:Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;

.field final synthetic val$iPaint:Lcn/codemao/android/sketch/view/paint/IPaint;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/adapter/PaintAdapter;Lcn/codemao/android/sketch/view/paint/IPaint;Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;)V
    .registers 4

    .line 96
    iput-object p1, p0, Lcn/codemao/android/sketch/adapter/PaintAdapter$1;->this$0:Lcn/codemao/android/sketch/adapter/PaintAdapter;

    iput-object p2, p0, Lcn/codemao/android/sketch/adapter/PaintAdapter$1;->val$iPaint:Lcn/codemao/android/sketch/view/paint/IPaint;

    iput-object p3, p0, Lcn/codemao/android/sketch/adapter/PaintAdapter$1;->val$holder:Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    const-string p1, "onClick: 3"

    const-string v0, "PaintAdapter"

    const-string v1, "onClick: 1"

    .line 99
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x1f4

    .line 100
    invoke-static {v1, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick(J)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string p1, "onClick: 2"

    .line 101
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 104
    :cond_17
    iget-object v1, p0, Lcn/codemao/android/sketch/adapter/PaintAdapter$1;->val$iPaint:Lcn/codemao/android/sketch/view/paint/IPaint;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v1

    invoke-interface {v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->isDrawing()Z

    move-result v1

    if-eqz v1, :cond_24

    return-void

    :cond_24
    :try_start_24
    const-string v1, "onClick: onBindViewHolder"

    .line 108
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v1, p0, Lcn/codemao/android/sketch/adapter/PaintAdapter$1;->this$0:Lcn/codemao/android/sketch/adapter/PaintAdapter;

    invoke-static {v1}, Lcn/codemao/android/sketch/adapter/PaintAdapter;->access$000(Lcn/codemao/android/sketch/adapter/PaintAdapter;)Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;

    move-result-object v1

    if-eqz v1, :cond_93

    .line 112
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PaintAdapter onClick lastHolder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/codemao/android/sketch/adapter/PaintAdapter$1;->this$0:Lcn/codemao/android/sketch/adapter/PaintAdapter;

    invoke-static {v3}, Lcn/codemao/android/sketch/adapter/PaintAdapter;->access$000(Lcn/codemao/android/sketch/adapter/PaintAdapter;)Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcn/codemao/android/sketch/adapter/PaintAdapter$1;->this$0:Lcn/codemao/android/sketch/adapter/PaintAdapter;

    iget-object v2, v1, Lcn/codemao/android/sketch/adapter/PaintAdapter;->penPaints:Ljava/util/List;

    invoke-static {v1}, Lcn/codemao/android/sketch/adapter/PaintAdapter;->access$000(Lcn/codemao/android/sketch/adapter/PaintAdapter;)Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/view/paint/IPaint;

    .line 114
    invoke-virtual {v1}, Lcn/codemao/android/sketch/view/paint/IPaint;->canAnim()Z

    move-result v2

    if-eqz v2, :cond_72

    .line 115
    iget-object v2, p0, Lcn/codemao/android/sketch/adapter/PaintAdapter$1;->this$0:Lcn/codemao/android/sketch/adapter/PaintAdapter;

    invoke-static {v2}, Lcn/codemao/android/sketch/adapter/PaintAdapter;->access$000(Lcn/codemao/android/sketch/adapter/PaintAdapter;)Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/codemao/android/sketch/adapter/PaintAdapter;->access$100(Lcn/codemao/android/sketch/adapter/PaintAdapter;Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;)V

    .line 117
    :cond_72
    iget-object v2, p0, Lcn/codemao/android/sketch/adapter/PaintAdapter$1;->this$0:Lcn/codemao/android/sketch/adapter/PaintAdapter;

    invoke-static {v2}, Lcn/codemao/android/sketch/adapter/PaintAdapter;->access$000(Lcn/codemao/android/sketch/adapter/PaintAdapter;)Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;

    move-result-object v2

    iget-object v3, p0, Lcn/codemao/android/sketch/adapter/PaintAdapter$1;->val$holder:Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;

    if-ne v2, v3, :cond_93

    invoke-virtual {v1}, Lcn/codemao/android/sketch/view/paint/IPaint;->canAnim()Z

    move-result v2

    if-eqz v2, :cond_93

    .line 118
    iget-object v2, p0, Lcn/codemao/android/sketch/adapter/PaintAdapter$1;->this$0:Lcn/codemao/android/sketch/adapter/PaintAdapter;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcn/codemao/android/sketch/adapter/PaintAdapter;->access$002(Lcn/codemao/android/sketch/adapter/PaintAdapter;Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;)Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;

    .line 119
    invoke-virtual {v1}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v1

    invoke-interface {v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->resetPaint()V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_8f} :catch_b7
    .catchall {:try_start_24 .. :try_end_8f} :catchall_b5

    .line 137
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 125
    :cond_93
    :try_start_93
    iget-object v1, p0, Lcn/codemao/android/sketch/adapter/PaintAdapter$1;->this$0:Lcn/codemao/android/sketch/adapter/PaintAdapter;

    iget-object v2, p0, Lcn/codemao/android/sketch/adapter/PaintAdapter$1;->val$holder:Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;

    invoke-static {v1, v2}, Lcn/codemao/android/sketch/adapter/PaintAdapter;->access$002(Lcn/codemao/android/sketch/adapter/PaintAdapter;Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;)Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;

    .line 127
    iget-object v1, p0, Lcn/codemao/android/sketch/adapter/PaintAdapter$1;->this$0:Lcn/codemao/android/sketch/adapter/PaintAdapter;

    iget-object v2, v1, Lcn/codemao/android/sketch/adapter/PaintAdapter;->penPaints:Ljava/util/List;

    invoke-static {v1}, Lcn/codemao/android/sketch/adapter/PaintAdapter;->access$000(Lcn/codemao/android/sketch/adapter/PaintAdapter;)Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/view/paint/IPaint;

    .line 129
    invoke-virtual {v1}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->changePaint(Lcn/codemao/android/sketch/view/paint/IPaint;Z)V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_b4} :catch_b7
    .catchall {:try_start_93 .. :try_end_b4} :catchall_b5

    goto :goto_d3

    :catchall_b5
    move-exception v1

    goto :goto_d7

    :catch_b7
    move-exception v1

    .line 133
    :try_start_b8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d3
    .catchall {:try_start_b8 .. :try_end_d3} :catchall_b5

    .line 137
    :goto_d3
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_d7
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    throw v1
.end method
