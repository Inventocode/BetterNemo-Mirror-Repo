.class public final Lcom/codemao/nemo/biz/knworklist/WorkListNemoActivity;
.super Lcom/codemao/toolssdk/activity/WorkListActivity;
.source "WorkListNemoActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/biz/knworklist/WorkListNemoActivity$Companion;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/nemo/biz/knworklist/WorkListNemoActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/nemo/biz/knworklist/WorkListNemoActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 12
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/WorkListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getWorkListFragment()Lcom/codemao/toolssdk/fragment/WorkListFragment;
    .registers 2

    .line 30
    new-instance v0, Lcom/codemao/nemo/biz/knworklist/WorkListNemoFragment;

    invoke-direct {v0}, Lcom/codemao/nemo/biz/knworklist/WorkListNemoFragment;-><init>()V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 25
    sget-object v0, Lcom/codemao/nemo/util/CMToolsUtils;->INSTANCE:Lcom/codemao/nemo/util/CMToolsUtils;

    invoke-virtual {v0}, Lcom/codemao/nemo/util/CMToolsUtils;->updateToken()V

    .line 26
    invoke-super {p0, p1}, Lcom/codemao/toolssdk/activity/WorkListActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
