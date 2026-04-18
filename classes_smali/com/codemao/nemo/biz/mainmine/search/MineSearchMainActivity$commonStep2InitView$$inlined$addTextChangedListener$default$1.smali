.class public final Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$commonStep2InitView$$inlined$addTextChangedListener$default$1;
.super Ljava/lang/Object;
.source "TextView.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->commonStep2InitView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1\n+ 2 MineSearchMainActivity.kt\ncom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$1\n+ 4 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$2\n*L\n1#1,97:1\n62#2,2:98\n71#3:100\n77#4:101\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$commonStep2InitView$$inlined$addTextChangedListener$default$1;->this$0:Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    .line 98
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$commonStep2InitView$$inlined$addTextChangedListener$default$1;->this$0:Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->access$search(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
