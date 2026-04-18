.class Lcom/codemao/nemo/MainActivityV2$2;
.super Ljava/lang/Object;
.source "MainActivityV2.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/MainActivityV2;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/MainActivityV2;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/MainActivityV2;)V
    .registers 2

    .line 355
    iput-object p1, p0, Lcom/codemao/nemo/MainActivityV2$2;->this$0:Lcom/codemao/nemo/MainActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 3

    const p1, 0x7f0a01e0

    if-eq p2, p1, :cond_14

    const p1, 0x7f0a0535

    if-eq p2, p1, :cond_b

    goto :goto_28

    .line 364
    :cond_b
    iget-object p1, p0, Lcom/codemao/nemo/MainActivityV2$2;->this$0:Lcom/codemao/nemo/MainActivityV2;

    iget-object p1, p1, Lcom/codemao/nemo/MainActivityV2;->viewPager:Lcom/codemao/nemo/view/NoScrollViewPager;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_28

    .line 360
    :cond_14
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/codemao/nemo/event/GetMessageCountEvent;

    invoke-direct {p2}, Lcom/codemao/nemo/event/GetMessageCountEvent;-><init>()V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 361
    iget-object p1, p0, Lcom/codemao/nemo/MainActivityV2$2;->this$0:Lcom/codemao/nemo/MainActivityV2;

    iget-object p1, p1, Lcom/codemao/nemo/MainActivityV2;->viewPager:Lcom/codemao/nemo/view/NoScrollViewPager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :goto_28
    return-void
.end method
