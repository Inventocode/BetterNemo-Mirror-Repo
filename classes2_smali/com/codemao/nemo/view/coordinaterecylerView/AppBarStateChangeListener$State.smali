.class public final enum Lcom/codemao/nemo/view/coordinaterecylerView/AppBarStateChangeListener$State;
.super Ljava/lang/Enum;
.source "AppBarStateChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codemao/nemo/view/coordinaterecylerView/AppBarStateChangeListener$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codemao/nemo/view/coordinaterecylerView/AppBarStateChangeListener$State;

.field public static final enum COLLAPSED:Lcom/codemao/nemo/view/coordinaterecylerView/AppBarStateChangeListener$State;

.field public static final enum EXPANDED:Lcom/codemao/nemo/view/coordinaterecylerView/AppBarStateChangeListener$State;

.field public static final enum IDLE:Lcom/codemao/nemo/view/coordinaterecylerView/AppBarStateChangeListener$State;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 9
    new-instance v0, Lcom/codemao/nemo/view/coordinaterecylerView/AppBarStateChangeListener$State;

    const-string v1, "EXPANDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/view/coordinaterecylerView/AppBarStateChangeListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/nemo/view/coordinaterecylerView/AppBarStateChangeListener$State;->EXPANDED:Lcom/codemao/nemo/view/coordinaterecylerView/AppBarStateChangeListener$State;

    .line 10
    new-instance v1, Lcom/codemao/nemo/view/coordinaterecylerView/AppBarStateChangeListener$State;

    const-string v3, "COLLAPSED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/codemao/nemo/view/coordinaterecylerView/AppBarStateChangeListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/codemao/nemo/view/coordinaterecylerView/AppBarStateChangeListener$State;->COLLAPSED:Lcom/codemao/nemo/view/coordinaterecylerView/AppBarStateChangeListener$State;

    .line 11
    new-instance v3, Lcom/codemao/nemo/view/coordinaterecylerView/AppBarStateChangeListener$State;

    const-string v5, "IDLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/codemao/nemo/view/coordinaterecylerView/AppBarStateChangeListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/codemao/nemo/view/coordinaterecylerView/AppBarStateChangeListener$State;->IDLE:Lcom/codemao/nemo/view/coordinaterecylerView/AppBarStateChangeListener$State;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/codemao/nemo/view/coordinaterecylerView/AppBarStateChangeListener$State;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 8
    sput-object v5, Lcom/codemao/nemo/view/coordinaterecylerView/AppBarStateChangeListener$State;->$VALUES:[Lcom/codemao/nemo/view/coordinaterecylerView/AppBarStateChangeListener$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codemao/nemo/view/coordinaterecylerView/AppBarStateChangeListener$State;
    .registers 2

    .line 8
    const-class v0, Lcom/codemao/nemo/view/coordinaterecylerView/AppBarStateChangeListener$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codemao/nemo/view/coordinaterecylerView/AppBarStateChangeListener$State;

    return-object p0
.end method

.method public static values()[Lcom/codemao/nemo/view/coordinaterecylerView/AppBarStateChangeListener$State;
    .registers 1

    .line 8
    sget-object v0, Lcom/codemao/nemo/view/coordinaterecylerView/AppBarStateChangeListener$State;->$VALUES:[Lcom/codemao/nemo/view/coordinaterecylerView/AppBarStateChangeListener$State;

    invoke-virtual {v0}, [Lcom/codemao/nemo/view/coordinaterecylerView/AppBarStateChangeListener$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codemao/nemo/view/coordinaterecylerView/AppBarStateChangeListener$State;

    return-object v0
.end method
