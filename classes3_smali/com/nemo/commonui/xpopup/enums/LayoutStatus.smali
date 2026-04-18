.class public final enum Lcom/nemo/commonui/xpopup/enums/LayoutStatus;
.super Ljava/lang/Enum;
.source "LayoutStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nemo/commonui/xpopup/enums/LayoutStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

.field public static final enum Close:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

.field public static final enum Closing:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

.field public static final enum Open:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

.field public static final enum Opening:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 8
    new-instance v0, Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    const-string v1, "Open"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nemo/commonui/xpopup/enums/LayoutStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nemo/commonui/xpopup/enums/LayoutStatus;->Open:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    new-instance v1, Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    const-string v3, "Close"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/nemo/commonui/xpopup/enums/LayoutStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/nemo/commonui/xpopup/enums/LayoutStatus;->Close:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    new-instance v3, Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    const-string v5, "Opening"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/nemo/commonui/xpopup/enums/LayoutStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/nemo/commonui/xpopup/enums/LayoutStatus;->Opening:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    new-instance v5, Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    const-string v7, "Closing"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/nemo/commonui/xpopup/enums/LayoutStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/nemo/commonui/xpopup/enums/LayoutStatus;->Closing:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 7
    sput-object v7, Lcom/nemo/commonui/xpopup/enums/LayoutStatus;->$VALUES:[Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/nemo/commonui/xpopup/enums/LayoutStatus;
    .registers 2

    .line 7
    const-class v0, Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    return-object p0
.end method

.method public static values()[Lcom/nemo/commonui/xpopup/enums/LayoutStatus;
    .registers 1

    .line 7
    sget-object v0, Lcom/nemo/commonui/xpopup/enums/LayoutStatus;->$VALUES:[Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    invoke-virtual {v0}, [Lcom/nemo/commonui/xpopup/enums/LayoutStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    return-object v0
.end method
