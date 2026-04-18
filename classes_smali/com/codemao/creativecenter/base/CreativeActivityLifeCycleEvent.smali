.class public final enum Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;
.super Ljava/lang/Enum;
.source "CreativeActivityLifeCycleEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;

.field public static final enum CREATE:Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;

.field public static final enum DESTORY:Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;

.field public static final enum PAUSE:Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;

.field public static final enum RESTART:Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;

.field public static final enum RESUME:Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;

.field public static final enum START:Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;

.field public static final enum STOP:Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 8
    new-instance v0, Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;

    const-string v1, "CREATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;->CREATE:Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;

    .line 9
    new-instance v1, Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;

    const-string v3, "START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;->START:Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;

    .line 10
    new-instance v3, Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;

    const-string v5, "RESUME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;->RESUME:Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;

    .line 11
    new-instance v5, Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;

    const-string v7, "PAUSE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;->PAUSE:Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;

    .line 12
    new-instance v7, Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;

    const-string v9, "STOP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;->STOP:Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;

    .line 13
    new-instance v9, Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;

    const-string v11, "DESTORY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;->DESTORY:Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;

    .line 14
    new-instance v11, Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;

    const-string v13, "RESTART"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;->RESTART:Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 7
    sput-object v13, Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;->$VALUES:[Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;
    .registers 2

    .line 7
    const-class v0, Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;

    return-object p0
.end method

.method public static values()[Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;
    .registers 1

    .line 7
    sget-object v0, Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;->$VALUES:[Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;

    invoke-virtual {v0}, [Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;

    return-object v0
.end method
