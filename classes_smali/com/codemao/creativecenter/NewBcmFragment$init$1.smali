.class final Lcom/codemao/creativecenter/NewBcmFragment$init$1;
.super Ljava/lang/Object;
.source "NewBcmFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/NewBcmFragment;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/NewBcmFragment;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/NewBcmFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$init$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 285
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$init$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->access$initWorkDirection(Lcom/codemao/creativecenter/NewBcmFragment;)V

    .line 286
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$init$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->access$initView(Lcom/codemao/creativecenter/NewBcmFragment;)V

    .line 287
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$init$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    new-instance v1, Lcom/codemao/creativecenter/vm/SidebarVM;

    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    invoke-direct {v1, v0, v2}, Lcom/codemao/creativecenter/vm/SidebarVM;-><init>(Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;Z)V

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/NewBcmFragment;->access$setSidebarVM$p(Lcom/codemao/creativecenter/NewBcmFragment;Lcom/codemao/creativecenter/vm/SidebarVM;)V

    .line 288
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$init$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    new-instance v1, Lcom/codemao/creativecenter/vm/HanshubarVM;

    invoke-direct {v1, v0}, Lcom/codemao/creativecenter/vm/HanshubarVM;-><init>(Lcom/codemao/creativecenter/vm/HanshubarVM$CallBack;)V

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/NewBcmFragment;->access$setHanshubarVM$p(Lcom/codemao/creativecenter/NewBcmFragment;Lcom/codemao/creativecenter/vm/HanshubarVM;)V

    .line 289
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$init$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    new-instance v1, Lcom/codemao/creativecenter/vm/ScreenSelectVM;

    .line 290
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    .line 291
    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment$init$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v3}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getBinding$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    move-result-object v3

    if-eqz v3, :cond_39

    iget-object v3, v3, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->middle:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    goto :goto_3a

    :cond_39
    const/4 v3, 0x0

    .line 292
    :goto_3a
    new-instance v4, Lcom/codemao/creativecenter/NewBcmFragment$init$1$1;

    invoke-direct {v4, p0}, Lcom/codemao/creativecenter/NewBcmFragment$init$1$1;-><init>(Lcom/codemao/creativecenter/NewBcmFragment$init$1;)V

    .line 289
    invoke-direct {v1, v2, v3, v4}, Lcom/codemao/creativecenter/vm/ScreenSelectVM;-><init>(ZLcom/codemao/creativecenter/callback/ObserverAction;Lcom/codemao/creativecenter/vm/ScreenSelectVM$CallBack;)V

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/NewBcmFragment;->access$setScreenSelectVM$p(Lcom/codemao/creativecenter/NewBcmFragment;Lcom/codemao/creativecenter/vm/ScreenSelectVM;)V

    .line 297
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$init$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getKeyboardHeightProvider$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;

    move-result-object v0

    if-eqz v0, :cond_50

    invoke-virtual {v0}, Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;->start()V

    .line 298
    :cond_50
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$init$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->access$initLayout(Lcom/codemao/creativecenter/NewBcmFragment;)V

    .line 299
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$init$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->access$delayInit(Lcom/codemao/creativecenter/NewBcmFragment;)V

    return-void
.end method
