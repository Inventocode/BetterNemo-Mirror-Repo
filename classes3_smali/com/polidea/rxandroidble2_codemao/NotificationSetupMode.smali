.class public final enum Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;
.super Ljava/lang/Enum;
.source "NotificationSetupMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;

.field public static final enum COMPAT:Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;

.field public static final enum DEFAULT:Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;

.field public static final enum QUICK_SETUP:Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;


# direct methods
.method private static synthetic $values()[Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;

    .line 3
    sget-object v1, Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;->DEFAULT:Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;->COMPAT:Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;->QUICK_SETUP:Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 9
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;->DEFAULT:Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;

    .line 13
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;

    const-string v1, "COMPAT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;->COMPAT:Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;

    .line 21
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;

    const-string v1, "QUICK_SETUP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;->QUICK_SETUP:Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;

    .line 3
    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;->$values()[Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;

    move-result-object v0

    sput-object v0, Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;->$VALUES:[Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;
    .registers 2

    .line 3
    const-class v0, Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;

    return-object p0
.end method

.method public static values()[Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;
    .registers 1

    .line 3
    sget-object v0, Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;->$VALUES:[Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;

    invoke-virtual {v0}, [Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;

    return-object v0
.end method
