.class public final Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig$getLifecycleObserver$1;
.super Ljava/lang/Object;
.source "CppToolsManagerConfig.kt"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig;->getLifecycleObserver()Landroidx/lifecycle/LifecycleObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig$getLifecycleObserver$1;->this$0:Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 6

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onCreate(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    .line 111
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "生命周期回调：onCreate"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLog;->dLifecycle(Ljava/lang/String;)V

    .line 112
    sget-object p1, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig$getLifecycleObserver$1;->this$0:Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getToolType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig$getLifecycleObserver$1;->this$0:Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getLastLoadUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onCreate"

    const-string v3, "observer"

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->lifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 6

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onStart(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    .line 139
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "生命周期回调：onDestroy"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLog;->dLifecycle(Ljava/lang/String;)V

    .line 140
    sget-object p1, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig$getLifecycleObserver$1;->this$0:Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getToolType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig$getLifecycleObserver$1;->this$0:Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getLastLoadUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onDestroy"

    const-string v3, "observer"

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->lifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onStart(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    .line 122
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "生命周期回调：onPause"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLog;->dLifecycle(Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 6

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onStart(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    .line 127
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "生命周期回调：onResume"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLog;->dLifecycle(Ljava/lang/String;)V

    .line 128
    sget-object p1, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig$getLifecycleObserver$1;->this$0:Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getToolType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig$getLifecycleObserver$1;->this$0:Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getLastLoadUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onResume"

    const-string v3, "observer"

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->lifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onStart(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    .line 117
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "生命周期回调：onStart"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLog;->dLifecycle(Ljava/lang/String;)V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 6

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onStart(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    .line 133
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "生命周期回调：onStop"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLog;->dLifecycle(Ljava/lang/String;)V

    .line 134
    sget-object p1, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig$getLifecycleObserver$1;->this$0:Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getToolType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig$getLifecycleObserver$1;->this$0:Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getLastLoadUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onStop"

    const-string v3, "observer"

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->lifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
