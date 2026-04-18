.class final enum Lcom/codemao/nemo/sdk/update/UpdateHelper$Singleton;
.super Ljava/lang/Enum;
.source "UpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/sdk/update/UpdateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Singleton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codemao/nemo/sdk/update/UpdateHelper$Singleton;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codemao/nemo/sdk/update/UpdateHelper$Singleton;

.field public static final enum SINGLETON:Lcom/codemao/nemo/sdk/update/UpdateHelper$Singleton;


# instance fields
.field mHelper:Lcom/codemao/nemo/sdk/update/UpdateHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 47
    new-instance v0, Lcom/codemao/nemo/sdk/update/UpdateHelper$Singleton;

    const-string v1, "SINGLETON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/sdk/update/UpdateHelper$Singleton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/nemo/sdk/update/UpdateHelper$Singleton;->SINGLETON:Lcom/codemao/nemo/sdk/update/UpdateHelper$Singleton;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/codemao/nemo/sdk/update/UpdateHelper$Singleton;

    aput-object v0, v1, v2

    .line 46
    sput-object v1, Lcom/codemao/nemo/sdk/update/UpdateHelper$Singleton;->$VALUES:[Lcom/codemao/nemo/sdk/update/UpdateHelper$Singleton;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    new-instance p1, Lcom/codemao/nemo/sdk/update/UpdateHelper;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/codemao/nemo/sdk/update/UpdateHelper;-><init>(Lcom/codemao/nemo/sdk/update/UpdateHelper$1;)V

    iput-object p1, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper$Singleton;->mHelper:Lcom/codemao/nemo/sdk/update/UpdateHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/sdk/update/UpdateHelper$Singleton;)Lcom/codemao/nemo/sdk/update/UpdateHelper;
    .registers 1

    .line 46
    invoke-direct {p0}, Lcom/codemao/nemo/sdk/update/UpdateHelper$Singleton;->get()Lcom/codemao/nemo/sdk/update/UpdateHelper;

    move-result-object p0

    return-object p0
.end method

.method private get()Lcom/codemao/nemo/sdk/update/UpdateHelper;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper$Singleton;->mHelper:Lcom/codemao/nemo/sdk/update/UpdateHelper;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codemao/nemo/sdk/update/UpdateHelper$Singleton;
    .registers 2

    .line 46
    const-class v0, Lcom/codemao/nemo/sdk/update/UpdateHelper$Singleton;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codemao/nemo/sdk/update/UpdateHelper$Singleton;

    return-object p0
.end method

.method public static values()[Lcom/codemao/nemo/sdk/update/UpdateHelper$Singleton;
    .registers 1

    .line 46
    sget-object v0, Lcom/codemao/nemo/sdk/update/UpdateHelper$Singleton;->$VALUES:[Lcom/codemao/nemo/sdk/update/UpdateHelper$Singleton;

    invoke-virtual {v0}, [Lcom/codemao/nemo/sdk/update/UpdateHelper$Singleton;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codemao/nemo/sdk/update/UpdateHelper$Singleton;

    return-object v0
.end method
