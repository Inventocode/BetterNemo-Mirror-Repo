.class public final Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebFragment;
.super Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBizFragment;
.source "CTAIKidsWebFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebFragment$Companion;
    }
.end annotation


# static fields
.field private static final BUNDLE_KEY_COURSE_URL:Ljava/lang/String;

.field private static final BUNDLE_KEY_TEST_URL:Ljava/lang/String;

.field private static final BUNDLE_KEY_TOKEN:Ljava/lang/String;

.field public static final Companion:Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebFragment$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebFragment;->Companion:Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebFragment$Companion;

    const-string v0, "token"

    .line 9
    sput-object v0, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebFragment;->BUNDLE_KEY_TOKEN:Ljava/lang/String;

    const-string v0, "courseUrl"

    .line 10
    sput-object v0, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebFragment;->BUNDLE_KEY_COURSE_URL:Ljava/lang/String;

    const-string v0, "testUrl"

    .line 11
    sput-object v0, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebFragment;->BUNDLE_KEY_TEST_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBizFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getBUNDLE_KEY_COURSE_URL$cp()Ljava/lang/String;
    .registers 1

    .line 5
    sget-object v0, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebFragment;->BUNDLE_KEY_COURSE_URL:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getBUNDLE_KEY_TEST_URL$cp()Ljava/lang/String;
    .registers 1

    .line 5
    sget-object v0, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebFragment;->BUNDLE_KEY_TEST_URL:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getBUNDLE_KEY_TOKEN$cp()Ljava/lang/String;
    .registers 1

    .line 5
    sget-object v0, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebFragment;->BUNDLE_KEY_TOKEN:Ljava/lang/String;

    return-object v0
.end method
