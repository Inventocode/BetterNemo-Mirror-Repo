.class final enum Lcom/codemao/creativecenter/utils/CreativeActivityUtils$Singleton;
.super Ljava/lang/Enum;
.source "CreativeActivityUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/utils/CreativeActivityUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Singleton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codemao/creativecenter/utils/CreativeActivityUtils$Singleton;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codemao/creativecenter/utils/CreativeActivityUtils$Singleton;

.field public static final enum instance:Lcom/codemao/creativecenter/utils/CreativeActivityUtils$Singleton;


# instance fields
.field private mCreativeActivityUtils:Lcom/codemao/creativecenter/utils/CreativeActivityUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 38
    new-instance v0, Lcom/codemao/creativecenter/utils/CreativeActivityUtils$Singleton;

    const-string v1, "instance"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codemao/creativecenter/utils/CreativeActivityUtils$Singleton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/creativecenter/utils/CreativeActivityUtils$Singleton;->instance:Lcom/codemao/creativecenter/utils/CreativeActivityUtils$Singleton;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/codemao/creativecenter/utils/CreativeActivityUtils$Singleton;

    aput-object v0, v1, v2

    .line 37
    sput-object v1, Lcom/codemao/creativecenter/utils/CreativeActivityUtils$Singleton;->$VALUES:[Lcom/codemao/creativecenter/utils/CreativeActivityUtils$Singleton;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    new-instance p1, Lcom/codemao/creativecenter/utils/CreativeActivityUtils;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/codemao/creativecenter/utils/CreativeActivityUtils;-><init>(Lcom/codemao/creativecenter/utils/CreativeActivityUtils$1;)V

    iput-object p1, p0, Lcom/codemao/creativecenter/utils/CreativeActivityUtils$Singleton;->mCreativeActivityUtils:Lcom/codemao/creativecenter/utils/CreativeActivityUtils;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/utils/CreativeActivityUtils$Singleton;)Lcom/codemao/creativecenter/utils/CreativeActivityUtils;
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/codemao/creativecenter/utils/CreativeActivityUtils$Singleton;->get()Lcom/codemao/creativecenter/utils/CreativeActivityUtils;

    move-result-object p0

    return-object p0
.end method

.method private get()Lcom/codemao/creativecenter/utils/CreativeActivityUtils;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/CreativeActivityUtils$Singleton;->mCreativeActivityUtils:Lcom/codemao/creativecenter/utils/CreativeActivityUtils;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codemao/creativecenter/utils/CreativeActivityUtils$Singleton;
    .registers 2

    .line 37
    const-class v0, Lcom/codemao/creativecenter/utils/CreativeActivityUtils$Singleton;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codemao/creativecenter/utils/CreativeActivityUtils$Singleton;

    return-object p0
.end method

.method public static values()[Lcom/codemao/creativecenter/utils/CreativeActivityUtils$Singleton;
    .registers 1

    .line 37
    sget-object v0, Lcom/codemao/creativecenter/utils/CreativeActivityUtils$Singleton;->$VALUES:[Lcom/codemao/creativecenter/utils/CreativeActivityUtils$Singleton;

    invoke-virtual {v0}, [Lcom/codemao/creativecenter/utils/CreativeActivityUtils$Singleton;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codemao/creativecenter/utils/CreativeActivityUtils$Singleton;

    return-object v0
.end method
