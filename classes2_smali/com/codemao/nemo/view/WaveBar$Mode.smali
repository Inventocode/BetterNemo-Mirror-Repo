.class public final enum Lcom/codemao/nemo/view/WaveBar$Mode;
.super Ljava/lang/Enum;
.source "WaveBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/view/WaveBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codemao/nemo/view/WaveBar$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codemao/nemo/view/WaveBar$Mode;

.field public static final enum block:Lcom/codemao/nemo/view/WaveBar$Mode;

.field public static final enum role:Lcom/codemao/nemo/view/WaveBar$Mode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 189
    new-instance v0, Lcom/codemao/nemo/view/WaveBar$Mode;

    const-string v1, "role"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/view/WaveBar$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/nemo/view/WaveBar$Mode;->role:Lcom/codemao/nemo/view/WaveBar$Mode;

    .line 190
    new-instance v1, Lcom/codemao/nemo/view/WaveBar$Mode;

    const-string v3, "block"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/codemao/nemo/view/WaveBar$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/codemao/nemo/view/WaveBar$Mode;->block:Lcom/codemao/nemo/view/WaveBar$Mode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/codemao/nemo/view/WaveBar$Mode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 188
    sput-object v3, Lcom/codemao/nemo/view/WaveBar$Mode;->$VALUES:[Lcom/codemao/nemo/view/WaveBar$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 188
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codemao/nemo/view/WaveBar$Mode;
    .registers 2

    .line 188
    const-class v0, Lcom/codemao/nemo/view/WaveBar$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codemao/nemo/view/WaveBar$Mode;

    return-object p0
.end method

.method public static values()[Lcom/codemao/nemo/view/WaveBar$Mode;
    .registers 1

    .line 188
    sget-object v0, Lcom/codemao/nemo/view/WaveBar$Mode;->$VALUES:[Lcom/codemao/nemo/view/WaveBar$Mode;

    invoke-virtual {v0}, [Lcom/codemao/nemo/view/WaveBar$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codemao/nemo/view/WaveBar$Mode;

    return-object v0
.end method
