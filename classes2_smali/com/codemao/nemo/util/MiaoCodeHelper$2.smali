.class Lcom/codemao/nemo/util/MiaoCodeHelper$2;
.super Ljava/lang/Object;
.source "MiaoCodeHelper.java"

# interfaces
.implements Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog$CloseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/util/MiaoCodeHelper;->showMiaoCode(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/util/MiaoCodeHelper;)V
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$2;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$2;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$000(Lcom/codemao/nemo/util/MiaoCodeHelper;)V

    return-void
.end method
