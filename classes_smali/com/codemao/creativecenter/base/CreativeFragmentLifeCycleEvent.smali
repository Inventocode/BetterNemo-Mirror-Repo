.class public final enum Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;
.super Ljava/lang/Enum;
.source "CreativeFragmentLifeCycleEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

.field public static final enum ACTIVITY_CREATE:Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

.field public static final enum ATTACH:Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

.field public static final enum CREATE:Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

.field public static final enum CREATE_VIEW:Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

.field public static final enum DESTORY:Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

.field public static final enum DESTORY_VIEW:Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

.field public static final enum DETACH:Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

.field public static final enum PAUSE:Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

.field public static final enum RESUME:Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

.field public static final enum START:Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

.field public static final enum STOP:Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 8
    new-instance v0, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

    const-string v1, "ATTACH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;->ATTACH:Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

    .line 9
    new-instance v1, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

    const-string v3, "CREATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;->CREATE:Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

    .line 10
    new-instance v3, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

    const-string v5, "CREATE_VIEW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;->CREATE_VIEW:Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

    .line 11
    new-instance v5, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

    const-string v7, "ACTIVITY_CREATE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;->ACTIVITY_CREATE:Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

    .line 12
    new-instance v7, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

    const-string v9, "START"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;->START:Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

    .line 13
    new-instance v9, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

    const-string v11, "RESUME"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;->RESUME:Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

    .line 14
    new-instance v11, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

    const-string v13, "PAUSE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;->PAUSE:Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

    .line 15
    new-instance v13, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

    const-string v15, "STOP"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;->STOP:Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

    .line 16
    new-instance v15, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

    const-string v14, "DESTORY_VIEW"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;->DESTORY_VIEW:Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

    .line 17
    new-instance v14, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

    const-string v12, "DESTORY"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;->DESTORY:Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

    .line 18
    new-instance v12, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

    const-string v10, "DETACH"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;->DETACH:Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

    const/16 v10, 0xb

    new-array v10, v10, [Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    .line 7
    sput-object v10, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;->$VALUES:[Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;
    .registers 2

    .line 7
    const-class v0, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

    return-object p0
.end method

.method public static values()[Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;
    .registers 1

    .line 7
    sget-object v0, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;->$VALUES:[Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

    invoke-virtual {v0}, [Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

    return-object v0
.end method
