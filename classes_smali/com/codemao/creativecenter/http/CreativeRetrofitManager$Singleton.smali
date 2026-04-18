.class final enum Lcom/codemao/creativecenter/http/CreativeRetrofitManager$Singleton;
.super Ljava/lang/Enum;
.source "CreativeRetrofitManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/http/CreativeRetrofitManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Singleton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codemao/creativecenter/http/CreativeRetrofitManager$Singleton;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codemao/creativecenter/http/CreativeRetrofitManager$Singleton;

.field public static final enum instance:Lcom/codemao/creativecenter/http/CreativeRetrofitManager$Singleton;


# instance fields
.field mManager:Lcom/codemao/creativecenter/http/CreativeRetrofitManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 45
    new-instance v0, Lcom/codemao/creativecenter/http/CreativeRetrofitManager$Singleton;

    const-string v1, "instance"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager$Singleton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/creativecenter/http/CreativeRetrofitManager$Singleton;->instance:Lcom/codemao/creativecenter/http/CreativeRetrofitManager$Singleton;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/codemao/creativecenter/http/CreativeRetrofitManager$Singleton;

    aput-object v0, v1, v2

    .line 44
    sput-object v1, Lcom/codemao/creativecenter/http/CreativeRetrofitManager$Singleton;->$VALUES:[Lcom/codemao/creativecenter/http/CreativeRetrofitManager$Singleton;

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
    new-instance p1, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;-><init>(Lcom/codemao/creativecenter/http/CreativeRetrofitManager$1;)V

    iput-object p1, p0, Lcom/codemao/creativecenter/http/CreativeRetrofitManager$Singleton;->mManager:Lcom/codemao/creativecenter/http/CreativeRetrofitManager;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/http/CreativeRetrofitManager$Singleton;)Lcom/codemao/creativecenter/http/CreativeRetrofitManager;
    .registers 1

    .line 44
    invoke-direct {p0}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager$Singleton;->get()Lcom/codemao/creativecenter/http/CreativeRetrofitManager;

    move-result-object p0

    return-object p0
.end method

.method private get()Lcom/codemao/creativecenter/http/CreativeRetrofitManager;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/codemao/creativecenter/http/CreativeRetrofitManager$Singleton;->mManager:Lcom/codemao/creativecenter/http/CreativeRetrofitManager;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codemao/creativecenter/http/CreativeRetrofitManager$Singleton;
    .registers 2

    .line 44
    const-class v0, Lcom/codemao/creativecenter/http/CreativeRetrofitManager$Singleton;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codemao/creativecenter/http/CreativeRetrofitManager$Singleton;

    return-object p0
.end method

.method public static values()[Lcom/codemao/creativecenter/http/CreativeRetrofitManager$Singleton;
    .registers 1

    .line 44
    sget-object v0, Lcom/codemao/creativecenter/http/CreativeRetrofitManager$Singleton;->$VALUES:[Lcom/codemao/creativecenter/http/CreativeRetrofitManager$Singleton;

    invoke-virtual {v0}, [Lcom/codemao/creativecenter/http/CreativeRetrofitManager$Singleton;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codemao/creativecenter/http/CreativeRetrofitManager$Singleton;

    return-object v0
.end method
