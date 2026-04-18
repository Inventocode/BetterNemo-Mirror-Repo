.class public final Lcom/codemao/toolssdk/fragment/WorkListFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "WorkListFragment.kt"

# interfaces
.implements Lcom/codemao/toolssdk/view/WorksListWebView$EventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/fragment/WorkListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/fragment/WorkListFragment;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/fragment/WorkListFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/fragment/WorkListFragment$onViewCreated$1;->this$0:Lcom/codemao/toolssdk/fragment/WorkListFragment;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventCallBack(Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;)V
    .registers 13

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->getTarget()Lcom/codemao/toolssdk/model/dsbridge/Target;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/Target;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NEKO"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 56
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPEN_NEKO"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    .line 60
    :try_start_24
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->getValue()Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_32

    const-string v5, "workId"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_33

    :cond_32
    move-object v3, v4

    :goto_33
    instance-of v5, v3, Ljava/lang/Double;

    if-eqz v5, :cond_3a

    check-cast v3, Ljava/lang/Double;

    goto :goto_3b

    :cond_3a
    move-object v3, v4

    :goto_3b
    if-eqz v3, :cond_43

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-long v0, v0

    goto :goto_45

    :cond_43
    const-wide/16 v0, 0x0

    .line 62
    :goto_45
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->getValue()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_52

    const-string v3, "stageType"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_53

    :cond_52
    move-object p1, v4

    :goto_53
    instance-of v3, p1, Ljava/lang/Double;

    if-eqz v3, :cond_5a

    move-object v4, p1

    check-cast v4, Ljava/lang/Double;

    :cond_5a
    if-eqz v4, :cond_6b

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    double-to-int p1, v3

    sget-object v3, Lcom/codemao/toolssdk/manager/StageType;->Landscape:Lcom/codemao/toolssdk/manager/StageType;

    invoke-virtual {v3}, Lcom/codemao/toolssdk/manager/StageType;->getType()I

    move-result v3
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_67} :catch_6b

    if-ne p1, v3, :cond_6b

    const/4 p1, 0x1

    const/4 v2, 0x1

    :catch_6b
    :cond_6b
    move-wide v5, v0

    .line 67
    iget-object v3, p0, Lcom/codemao/toolssdk/fragment/WorkListFragment$onViewCreated$1;->this$0:Lcom/codemao/toolssdk/fragment/WorkListFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v10, 0x1

    const-string v8, "KN"

    const-string v9, "normal"

    invoke-virtual/range {v3 .. v10}, Lcom/codemao/toolssdk/fragment/WorkListFragment;->openCreateBcmActivity(Landroid/app/Activity;JLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_96

    .line 68
    :cond_7f
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EXIT"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_96

    .line 69
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/WorkListFragment$onViewCreated$1;->this$0:Lcom/codemao/toolssdk/fragment/WorkListFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_96

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_96
    :goto_96
    return-void
.end method
