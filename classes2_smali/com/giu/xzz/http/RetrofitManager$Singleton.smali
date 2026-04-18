.class final enum Lcom/giu/xzz/http/RetrofitManager$Singleton;
.super Ljava/lang/Enum;
.source "RetrofitManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/giu/xzz/http/RetrofitManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Singleton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/giu/xzz/http/RetrofitManager$Singleton;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/giu/xzz/http/RetrofitManager$Singleton;

.field public static final enum instance:Lcom/giu/xzz/http/RetrofitManager$Singleton;


# instance fields
.field mManager:Lcom/giu/xzz/http/RetrofitManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 92
    new-instance v0, Lcom/giu/xzz/http/RetrofitManager$Singleton;

    const-string v1, "instance"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/giu/xzz/http/RetrofitManager$Singleton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/giu/xzz/http/RetrofitManager$Singleton;->instance:Lcom/giu/xzz/http/RetrofitManager$Singleton;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/giu/xzz/http/RetrofitManager$Singleton;

    aput-object v0, v1, v2

    .line 91
    sput-object v1, Lcom/giu/xzz/http/RetrofitManager$Singleton;->$VALUES:[Lcom/giu/xzz/http/RetrofitManager$Singleton;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 96
    new-instance p1, Lcom/giu/xzz/http/RetrofitManager;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/giu/xzz/http/RetrofitManager;-><init>(Lcom/giu/xzz/http/RetrofitManager$1;)V

    iput-object p1, p0, Lcom/giu/xzz/http/RetrofitManager$Singleton;->mManager:Lcom/giu/xzz/http/RetrofitManager;

    return-void
.end method

.method static synthetic access$000(Lcom/giu/xzz/http/RetrofitManager$Singleton;)Lcom/giu/xzz/http/RetrofitManager;
    .registers 1

    .line 91
    invoke-direct {p0}, Lcom/giu/xzz/http/RetrofitManager$Singleton;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object p0

    return-object p0
.end method

.method private get()Lcom/giu/xzz/http/RetrofitManager;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/giu/xzz/http/RetrofitManager$Singleton;->mManager:Lcom/giu/xzz/http/RetrofitManager;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/giu/xzz/http/RetrofitManager$Singleton;
    .registers 2

    .line 91
    const-class v0, Lcom/giu/xzz/http/RetrofitManager$Singleton;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/giu/xzz/http/RetrofitManager$Singleton;

    return-object p0
.end method

.method public static values()[Lcom/giu/xzz/http/RetrofitManager$Singleton;
    .registers 1

    .line 91
    sget-object v0, Lcom/giu/xzz/http/RetrofitManager$Singleton;->$VALUES:[Lcom/giu/xzz/http/RetrofitManager$Singleton;

    invoke-virtual {v0}, [Lcom/giu/xzz/http/RetrofitManager$Singleton;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/giu/xzz/http/RetrofitManager$Singleton;

    return-object v0
.end method
