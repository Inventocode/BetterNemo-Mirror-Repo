.class final enum Lcom/codemao/nemo/util/ActivityUtils$Singleton;
.super Ljava/lang/Enum;
.source "ActivityUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/util/ActivityUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Singleton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codemao/nemo/util/ActivityUtils$Singleton;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codemao/nemo/util/ActivityUtils$Singleton;

.field public static final enum instance:Lcom/codemao/nemo/util/ActivityUtils$Singleton;


# instance fields
.field private mActivityUtils:Lcom/codemao/nemo/util/ActivityUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 45
    new-instance v0, Lcom/codemao/nemo/util/ActivityUtils$Singleton;

    const-string v1, "instance"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/util/ActivityUtils$Singleton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/nemo/util/ActivityUtils$Singleton;->instance:Lcom/codemao/nemo/util/ActivityUtils$Singleton;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/codemao/nemo/util/ActivityUtils$Singleton;

    aput-object v0, v1, v2

    .line 44
    sput-object v1, Lcom/codemao/nemo/util/ActivityUtils$Singleton;->$VALUES:[Lcom/codemao/nemo/util/ActivityUtils$Singleton;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    new-instance p1, Lcom/codemao/nemo/util/ActivityUtils;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/codemao/nemo/util/ActivityUtils;-><init>(Lcom/codemao/nemo/util/ActivityUtils$1;)V

    iput-object p1, p0, Lcom/codemao/nemo/util/ActivityUtils$Singleton;->mActivityUtils:Lcom/codemao/nemo/util/ActivityUtils;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/util/ActivityUtils$Singleton;)Lcom/codemao/nemo/util/ActivityUtils;
    .registers 1

    .line 44
    invoke-direct {p0}, Lcom/codemao/nemo/util/ActivityUtils$Singleton;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object p0

    return-object p0
.end method

.method private get()Lcom/codemao/nemo/util/ActivityUtils;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityUtils$Singleton;->mActivityUtils:Lcom/codemao/nemo/util/ActivityUtils;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codemao/nemo/util/ActivityUtils$Singleton;
    .registers 2

    .line 44
    const-class v0, Lcom/codemao/nemo/util/ActivityUtils$Singleton;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codemao/nemo/util/ActivityUtils$Singleton;

    return-object p0
.end method

.method public static values()[Lcom/codemao/nemo/util/ActivityUtils$Singleton;
    .registers 1

    .line 44
    sget-object v0, Lcom/codemao/nemo/util/ActivityUtils$Singleton;->$VALUES:[Lcom/codemao/nemo/util/ActivityUtils$Singleton;

    invoke-virtual {v0}, [Lcom/codemao/nemo/util/ActivityUtils$Singleton;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codemao/nemo/util/ActivityUtils$Singleton;

    return-object v0
.end method
