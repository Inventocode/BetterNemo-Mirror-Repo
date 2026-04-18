.class Lcom/codemao/nemo/delegates/CourseListBottomDelegate$1;
.super Ljava/lang/Object;
.source "CourseListBottomDelegate.java"

# interfaces
.implements Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/delegates/CourseListBottomDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/delegates/CourseListBottomDelegate;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/delegates/CourseListBottomDelegate;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/codemao/nemo/delegates/CourseListBottomDelegate$1;->this$0:Lcom/codemao/nemo/delegates/CourseListBottomDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubjectModelClickListener(ILcom/codemao/nemo/bean/viewmodel/SubjectItem;)V
    .registers 6

    .line 83
    iget-object v0, p0, Lcom/codemao/nemo/delegates/CourseListBottomDelegate$1;->this$0:Lcom/codemao/nemo/delegates/CourseListBottomDelegate;

    invoke-static {v0}, Lcom/codemao/nemo/delegates/CourseListBottomDelegate;->access$000(Lcom/codemao/nemo/delegates/CourseListBottomDelegate;)Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 84
    iget-object v0, p0, Lcom/codemao/nemo/delegates/CourseListBottomDelegate$1;->this$0:Lcom/codemao/nemo/delegates/CourseListBottomDelegate;

    invoke-static {v0}, Lcom/codemao/nemo/delegates/CourseListBottomDelegate;->access$000(Lcom/codemao/nemo/delegates/CourseListBottomDelegate;)Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;->onSubjectModelClickListener(ILcom/codemao/nemo/bean/viewmodel/SubjectItem;)V

    .line 86
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->getResponse()Lcom/codemao/nemo/bean/CourseV2ResponseItem;

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 87
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/event/CourseDotChangeEvent;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->getResponse()Lcom/codemao/nemo/bean/CourseV2ResponseItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->getId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/event/CourseDotChangeEvent;-><init>(J)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_2b
    return-void
.end method

.method public onSubjectMoreClickListener(IJZ)V
    .registers 6

    .line 73
    iget-object v0, p0, Lcom/codemao/nemo/delegates/CourseListBottomDelegate$1;->this$0:Lcom/codemao/nemo/delegates/CourseListBottomDelegate;

    invoke-static {v0}, Lcom/codemao/nemo/delegates/CourseListBottomDelegate;->access$000(Lcom/codemao/nemo/delegates/CourseListBottomDelegate;)Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 74
    iget-object v0, p0, Lcom/codemao/nemo/delegates/CourseListBottomDelegate$1;->this$0:Lcom/codemao/nemo/delegates/CourseListBottomDelegate;

    invoke-static {v0}, Lcom/codemao/nemo/delegates/CourseListBottomDelegate;->access$000(Lcom/codemao/nemo/delegates/CourseListBottomDelegate;)Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;->onSubjectMoreClickListener(IJZ)V

    .line 78
    :cond_11
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p4, Lcom/codemao/nemo/event/CourseDotChangeEvent;

    invoke-direct {p4, p2, p3}, Lcom/codemao/nemo/event/CourseDotChangeEvent;-><init>(J)V

    invoke-virtual {p1, p4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
