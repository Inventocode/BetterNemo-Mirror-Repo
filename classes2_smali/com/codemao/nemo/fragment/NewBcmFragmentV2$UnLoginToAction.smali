.class final enum Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;
.super Ljava/lang/Enum;
.source "NewBcmFragmentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/fragment/NewBcmFragmentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UnLoginToAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;

.field public static final enum isExitWithSave:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;

.field public static final enum isUnLoginFrom:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 966
    new-instance v0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;

    const-string v1, "isUnLoginFrom"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;->isUnLoginFrom:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;

    .line 967
    new-instance v1, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;

    const-string v3, "isExitWithSave"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;->isExitWithSave:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 965
    sput-object v3, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;->$VALUES:[Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 965
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;
    .registers 2

    .line 965
    const-class v0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;

    return-object p0
.end method

.method public static values()[Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;
    .registers 1

    .line 965
    sget-object v0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;->$VALUES:[Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;

    invoke-virtual {v0}, [Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;

    return-object v0
.end method
