.class public final enum Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;
.super Ljava/lang/Enum;
.source "RecommendViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

.field public static final enum BOX:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

.field public static final enum Banner:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

.field public static final enum BigCard:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

.field public static final enum BigCardPad:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

.field public static final enum NewActive:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

.field public static final enum NewWork:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

.field public static final enum Work:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;


# direct methods
.method private static final synthetic $values()[Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;
    .registers 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    sget-object v1, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;->BigCard:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;->BigCardPad:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;->NewWork:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;->NewActive:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;->Work:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;->Banner:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;->BOX:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 6
    new-instance v0, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    const-string v1, "BigCard"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;->BigCard:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    .line 7
    new-instance v0, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    const-string v1, "BigCardPad"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;->BigCardPad:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    .line 8
    new-instance v0, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    const-string v1, "NewWork"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;->NewWork:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    .line 9
    new-instance v0, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    const-string v1, "NewActive"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;->NewActive:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    .line 10
    new-instance v0, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    const-string v1, "Work"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;->Work:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    .line 11
    new-instance v0, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    const-string v1, "Banner"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;->Banner:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    .line 12
    new-instance v0, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    const-string v1, "BOX"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;->BOX:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    invoke-static {}, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;->$values()[Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    move-result-object v0

    sput-object v0, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;->$VALUES:[Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;
    .registers 2

    const-class v0, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    return-object p0
.end method

.method public static values()[Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;
    .registers 1

    sget-object v0, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;->$VALUES:[Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    return-object v0
.end method
