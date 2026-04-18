.class public final Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity;
.super Lcom/codemao/toolssdk/activity/kn/CreateBcmActivity2;
.source "CreateBcmNemoActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity;->Companion:Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 20
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/kn/CreateBcmActivity2;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreateBcmFragment(JLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;
    .registers 15

    const-string v0, "toolType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolMode"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    sget-object v1, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;->Companion:Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment$Companion;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment$Companion;->get(JLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;

    move-result-object p1

    return-object p1
.end method

.method public getCreateBcmFragment(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;
    .registers 13

    const-string v0, "workUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolMode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    sget-object v1, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;->Companion:Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment$Companion;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment$Companion;->get(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;

    move-result-object p1

    return-object p1
.end method

.method public getCreateBcmMiaoCodeFragment(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;
    .registers 13

    const-string v0, "miaoCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolMode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    sget-object v1, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;->Companion:Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment$Companion;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment$Companion;->getMiaoCode(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;

    move-result-object p1

    return-object p1
.end method

.method public getCreateBcmTemplateFragment(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;
    .registers 13

    const-string v0, "templateId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolMode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    sget-object v1, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;->Companion:Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment$Companion;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment$Companion;->getTemplate(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;

    move-result-object p1

    return-object p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 147
    sget-object v0, Lcom/codemao/nemo/util/CMToolsUtils;->INSTANCE:Lcom/codemao/nemo/util/CMToolsUtils;

    invoke-virtual {v0}, Lcom/codemao/nemo/util/CMToolsUtils;->updateToken()V

    .line 148
    invoke-super {p0, p1}, Lcom/codemao/toolssdk/activity/kn/CreateBcmActivity2;->onCreate(Landroid/os/Bundle;)V

    .line 149
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .line 198
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public final onWorkPublishSuccess(Lcom/codemao/nemo/event/CreatePublishSuccessKnEvent;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/kn/CreateBcmActivity2;->finish()V

    return-void
.end method
