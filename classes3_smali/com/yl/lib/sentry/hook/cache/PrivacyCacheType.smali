.class public final enum Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;
.super Ljava/lang/Enum;
.source "PrivacyCacheType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;

.field public static final enum MEMORY:Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;

.field public static final enum PERMANENT_DISK:Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;

.field public static final enum TIMELINESS_DISK:Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;

.field public static final enum TIMELINESS_MEMORY:Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;

    new-instance v1, Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;

    const-string v2, "MEMORY"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;->MEMORY:Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;

    const-string v2, "TIMELINESS_MEMORY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;->TIMELINESS_MEMORY:Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;

    const-string v2, "TIMELINESS_DISK"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;->TIMELINESS_DISK:Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;

    const-string v2, "PERMANENT_DISK"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;->PERMANENT_DISK:Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;->$VALUES:[Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;
    .registers 2

    const-class v0, Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;

    return-object p0
.end method

.method public static values()[Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;
    .registers 1

    sget-object v0, Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;->$VALUES:[Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;

    invoke-virtual {v0}, [Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;

    return-object v0
.end method
