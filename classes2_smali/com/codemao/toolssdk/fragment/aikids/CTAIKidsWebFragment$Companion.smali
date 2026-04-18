.class public final Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebFragment$Companion;
.super Ljava/lang/Object;
.source "CTAIKidsWebFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBUNDLE_KEY_COURSE_URL()Ljava/lang/String;
    .registers 2

    .line 10
    invoke-static {}, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebFragment;->access$getBUNDLE_KEY_COURSE_URL$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getBUNDLE_KEY_TEST_URL()Ljava/lang/String;
    .registers 2

    .line 11
    invoke-static {}, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebFragment;->access$getBUNDLE_KEY_TEST_URL$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getBUNDLE_KEY_TOKEN()Ljava/lang/String;
    .registers 2

    .line 9
    invoke-static {}, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebFragment;->access$getBUNDLE_KEY_TOKEN$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebFragment;
    .registers 6

    .line 14
    new-instance v0, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebFragment;

    invoke-direct {v0}, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebFragment;-><init>()V

    .line 15
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 16
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebFragment$Companion;->getBUNDLE_KEY_TOKEN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebFragment$Companion;->getBUNDLE_KEY_COURSE_URL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final getTestInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebFragment;
    .registers 6

    .line 23
    new-instance v0, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebFragment;

    invoke-direct {v0}, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebFragment;-><init>()V

    .line 24
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 25
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebFragment$Companion;->getBUNDLE_KEY_TOKEN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebFragment$Companion;->getBUNDLE_KEY_TEST_URL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
