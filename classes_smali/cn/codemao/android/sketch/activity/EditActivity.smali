.class public Lcn/codemao/android/sketch/activity/EditActivity;
.super Lcn/codemao/android/sketch/activity/BaseActivity;
.source "EditActivity.java"

# interfaces
.implements Lcn/codemao/android/sketch/utils/KeyboardHeightObserver;


# instance fields
.field afterText:Ljava/lang/String;

.field beforeText:Ljava/lang/String;

.field private hidePopBottom:I

.field private isInit:Z

.field private keyBoardHeight:I

.field private keyboardHeightProvider:Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;

.field private lastIndex:I

.field private mEditText:Lcn/codemao/android/sketch/utils/CEditText;

.field private mTextVO:Lcn/codemao/android/sketch/model/TextVO;

.field private rvTextColor:Landroidx/recyclerview/widget/RecyclerView;

.field private screenHeight:I

.field private textColorAdapter:Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

.field private textColorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private textColorPosition:I

.field private textColorType:I


# direct methods
.method public static synthetic $r8$lambda$bHPHdJ9kVzJ7DmTpSVSqWS0pEfc(Lcn/codemao/android/sketch/activity/EditActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/activity/EditActivity;->lambda$init$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 36
    invoke-direct {p0}, Lcn/codemao/android/sketch/activity/BaseActivity;-><init>()V

    const/16 v0, 0xfa0

    .line 43
    iput v0, p0, Lcn/codemao/android/sketch/activity/EditActivity;->textColorType:I

    const/4 v0, 0x6

    .line 44
    iput v0, p0, Lcn/codemao/android/sketch/activity/EditActivity;->textColorPosition:I

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcn/codemao/android/sketch/activity/EditActivity;->lastIndex:I

    .line 49
    iput v0, p0, Lcn/codemao/android/sketch/activity/EditActivity;->keyBoardHeight:I

    const/4 v1, 0x1

    .line 50
    iput-boolean v1, p0, Lcn/codemao/android/sketch/activity/EditActivity;->isInit:Z

    .line 51
    iput v0, p0, Lcn/codemao/android/sketch/activity/EditActivity;->hidePopBottom:I

    return-void
.end method

.method static synthetic access$000(Lcn/codemao/android/sketch/activity/EditActivity;)Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;
    .registers 1

    .line 36
    iget-object p0, p0, Lcn/codemao/android/sketch/activity/EditActivity;->keyboardHeightProvider:Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;

    return-object p0
.end method

.method static synthetic access$100(Lcn/codemao/android/sketch/activity/EditActivity;)I
    .registers 1

    .line 36
    iget p0, p0, Lcn/codemao/android/sketch/activity/EditActivity;->lastIndex:I

    return p0
.end method

.method static synthetic access$102(Lcn/codemao/android/sketch/activity/EditActivity;I)I
    .registers 2

    .line 36
    iput p1, p0, Lcn/codemao/android/sketch/activity/EditActivity;->lastIndex:I

    return p1
.end method

.method static synthetic access$200(Lcn/codemao/android/sketch/activity/EditActivity;)Lcn/codemao/android/sketch/utils/CEditText;
    .registers 1

    .line 36
    iget-object p0, p0, Lcn/codemao/android/sketch/activity/EditActivity;->mEditText:Lcn/codemao/android/sketch/utils/CEditText;

    return-object p0
.end method

.method static synthetic access$300(Lcn/codemao/android/sketch/activity/EditActivity;)V
    .registers 1

    .line 36
    invoke-direct {p0}, Lcn/codemao/android/sketch/activity/EditActivity;->setBackgroundText()V

    return-void
.end method

.method private init()V
    .registers 5

    .line 237
    new-instance v0, Lcn/codemao/android/sketch/model/TextVO;

    invoke-direct {v0}, Lcn/codemao/android/sketch/model/TextVO;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/activity/EditActivity;->mTextVO:Lcn/codemao/android/sketch/model/TextVO;

    .line 238
    invoke-static {}, Lcn/codemao/android/sketch/Constants;->getColor()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/activity/EditActivity;->textColorList:Ljava/util/ArrayList;

    .line 240
    new-instance v1, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    invoke-direct {v1, p0, v0}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcn/codemao/android/sketch/activity/EditActivity;->textColorAdapter:Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    .line 241
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/EditActivity;->textColorList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x6

    iput v0, p0, Lcn/codemao/android/sketch/activity/EditActivity;->textColorPosition:I

    .line 242
    iget-object v1, p0, Lcn/codemao/android/sketch/activity/EditActivity;->textColorAdapter:Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    invoke-virtual {v1, v0}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->setSelectPosition(I)V

    .line 244
    sget v0, Lcn/codemao/android/sketch/R$id;->rv_text_color_select:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcn/codemao/android/sketch/activity/EditActivity;->rvTextColor:Landroidx/recyclerview/widget/RecyclerView;

    .line 245
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 246
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/EditActivity;->rvTextColor:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/codemao/android/sketch/activity/EditActivity;->textColorAdapter:Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 247
    sget v0, Lcn/codemao/android/sketch/R$id;->editText:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/utils/CEditText;

    iput-object v0, p0, Lcn/codemao/android/sketch/activity/EditActivity;->mEditText:Lcn/codemao/android/sketch/utils/CEditText;

    .line 249
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/EditActivity;->rvTextColor:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 251
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/EditActivity;->textColorAdapter:Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    new-instance v1, Lcn/codemao/android/sketch/activity/EditActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcn/codemao/android/sketch/activity/EditActivity$$ExternalSyntheticLambda0;-><init>(Lcn/codemao/android/sketch/activity/EditActivity;)V

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->setColorSelecListener(Landroid/view/View$OnClickListener;)V

    .line 272
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcn/codemao/android/sketch/activity/EditActivity;->screenHeight:I

    .line 273
    iget-object v1, p0, Lcn/codemao/android/sketch/activity/EditActivity;->textColorAdapter:Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    invoke-virtual {v1, v0}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->setScreenHeight(I)V

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/codemao/android/sketch/activity/EditActivity;->screenHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/codemao/android/sketch/utils/LogUtils;->d(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$init$0(Landroid/view/View;)V
    .registers 3

    .line 252
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_33

    .line 254
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/EditActivity;->mTextVO:Lcn/codemao/android/sketch/model/TextVO;

    invoke-virtual {v0, p1}, Lcn/codemao/android/sketch/model/TextVO;->setColorPosition(I)V

    .line 255
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/EditActivity;->mTextVO:Lcn/codemao/android/sketch/model/TextVO;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/TextVO;->changeBackgroundStatus()V

    .line 256
    iget p1, p0, Lcn/codemao/android/sketch/activity/EditActivity;->textColorType:I

    const/16 v0, 0xfa0

    if-ne p1, v0, :cond_26

    const/16 p1, 0xfa1

    .line 257
    iput p1, p0, Lcn/codemao/android/sketch/activity/EditActivity;->textColorType:I

    .line 258
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/EditActivity;->textColorAdapter:Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    invoke-virtual {v0, p1}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->setColorType(I)V

    goto :goto_2d

    .line 260
    :cond_26
    iput v0, p0, Lcn/codemao/android/sketch/activity/EditActivity;->textColorType:I

    .line 261
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/EditActivity;->textColorAdapter:Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->setColorType(I)V

    .line 263
    :goto_2d
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/EditActivity;->textColorAdapter:Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_3a

    .line 265
    :cond_33
    iput p1, p0, Lcn/codemao/android/sketch/activity/EditActivity;->textColorPosition:I

    .line 266
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/EditActivity;->textColorAdapter:Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    invoke-virtual {v0, p1}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->setSelectPosition(I)V

    .line 268
    :goto_3a
    invoke-direct {p0}, Lcn/codemao/android/sketch/activity/EditActivity;->setBackgroundText()V

    return-void
.end method

.method private setBackgroundText()V
    .registers 1

    .line 133
    invoke-direct {p0}, Lcn/codemao/android/sketch/activity/EditActivity;->setText()V

    return-void
.end method

.method private setLastText()V
    .registers 4

    .line 107
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/model/TextVO;

    if-eqz v0, :cond_45

    .line 109
    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/TextVO;->getColorPosition()I

    move-result v1

    iput v1, p0, Lcn/codemao/android/sketch/activity/EditActivity;->textColorPosition:I

    const/16 v1, 0xfa0

    .line 110
    iput v1, p0, Lcn/codemao/android/sketch/activity/EditActivity;->textColorType:I

    .line 111
    iget-object v2, p0, Lcn/codemao/android/sketch/activity/EditActivity;->textColorAdapter:Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    invoke-virtual {v2, v1}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->setColorType(I)V

    .line 112
    iget-object v1, p0, Lcn/codemao/android/sketch/activity/EditActivity;->textColorAdapter:Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    iget v2, p0, Lcn/codemao/android/sketch/activity/EditActivity;->textColorPosition:I

    invoke-virtual {v1, v2}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->setSelectPosition(I)V

    .line 113
    iget-object v1, p0, Lcn/codemao/android/sketch/activity/EditActivity;->mEditText:Lcn/codemao/android/sketch/utils/CEditText;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/TextVO;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v1, p0, Lcn/codemao/android/sketch/activity/EditActivity;->mTextVO:Lcn/codemao/android/sketch/model/TextVO;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/TextVO;->isHasBackground()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcn/codemao/android/sketch/model/TextVO;->setHasBackground(Z)V

    .line 115
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/EditActivity;->mTextVO:Lcn/codemao/android/sketch/model/TextVO;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/model/TextVO;->setUpdate(Z)V

    .line 117
    invoke-direct {p0}, Lcn/codemao/android/sketch/activity/EditActivity;->setBackgroundText()V

    .line 118
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/EditActivity;->mEditText:Lcn/codemao/android/sketch/utils/CEditText;

    invoke-static {v0}, Lcn/codemao/android/sketch/utils/SoftInputUtils;->openSoftInput(Landroid/view/View;)V

    goto :goto_52

    .line 120
    :cond_45
    invoke-direct {p0}, Lcn/codemao/android/sketch/activity/EditActivity;->setBackgroundText()V

    .line 121
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/EditActivity;->mEditText:Lcn/codemao/android/sketch/utils/CEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 122
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/EditActivity;->mEditText:Lcn/codemao/android/sketch/utils/CEditText;

    invoke-static {v0}, Lcn/codemao/android/sketch/utils/SoftInputUtils;->openSoftInput(Landroid/view/View;)V

    :goto_52
    return-void
.end method

.method private setText()V
    .registers 4

    .line 144
    invoke-static {}, Lcn/codemao/android/sketch/Constants;->getColor()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcn/codemao/android/sketch/activity/EditActivity;->textColorPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 145
    invoke-static {}, Lcn/codemao/android/sketch/Constants;->getColor()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcn/codemao/android/sketch/activity/EditActivity;->textColorPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 147
    iget-object v2, p0, Lcn/codemao/android/sketch/activity/EditActivity;->mTextVO:Lcn/codemao/android/sketch/model/TextVO;

    invoke-virtual {v2}, Lcn/codemao/android/sketch/model/TextVO;->isHasBackground()Z

    move-result v2

    if-eqz v2, :cond_69

    .line 150
    iget v0, p0, Lcn/codemao/android/sketch/activity/EditActivity;->textColorPosition:I

    invoke-static {}, Lcn/codemao/android/sketch/Constants;->getColor()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    if-ne v0, v1, :cond_41

    .line 151
    invoke-static {}, Lcn/codemao/android/sketch/Constants;->getColor()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_4b

    .line 153
    :cond_41
    invoke-static {}, Lcn/codemao/android/sketch/Constants;->getColor()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    .line 156
    :goto_4b
    invoke-static {}, Lcn/codemao/android/sketch/Constants;->getColor()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 157
    invoke-static {}, Lcn/codemao/android/sketch/Constants;->getColor()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcn/codemao/android/sketch/activity/EditActivity;->textColorPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 159
    :cond_69
    iget-object v2, p0, Lcn/codemao/android/sketch/activity/EditActivity;->mEditText:Lcn/codemao/android/sketch/utils/CEditText;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_85

    iget-object v2, p0, Lcn/codemao/android/sketch/activity/EditActivity;->mTextVO:Lcn/codemao/android/sketch/model/TextVO;

    invoke-virtual {v2}, Lcn/codemao/android/sketch/model/TextVO;->isHasBackground()Z

    move-result v2

    if-nez v2, :cond_86

    :cond_85
    const/4 v1, 0x0

    .line 163
    :cond_86
    iget-object v2, p0, Lcn/codemao/android/sketch/activity/EditActivity;->mEditText:Lcn/codemao/android/sketch/utils/CEditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 164
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/EditActivity;->mEditText:Lcn/codemao/android/sketch/utils/CEditText;

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/utils/CEditText;->setBackgroundColors(I)V

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "back:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/codemao/android/sketch/utils/LogUtils;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close(Landroid/view/View;)V
    .registers 2

    .line 285
    invoke-virtual {p0}, Lcn/codemao/android/sketch/activity/EditActivity;->finish()V

    return-void
.end method

.method public finish()V
    .registers 3

    .line 301
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 302
    sget v0, Lcn/codemao/android/sketch/R$anim;->bottom_in:I

    sget v1, Lcn/codemao/android/sketch/R$anim;->bottom_out:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public finish(Landroid/view/View;)V
    .registers 4

    .line 290
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 291
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/EditActivity;->mTextVO:Lcn/codemao/android/sketch/model/TextVO;

    iget-object v1, p0, Lcn/codemao/android/sketch/activity/EditActivity;->mEditText:Lcn/codemao/android/sketch/utils/CEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/model/TextVO;->setText(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/EditActivity;->mTextVO:Lcn/codemao/android/sketch/model/TextVO;

    iget v1, p0, Lcn/codemao/android/sketch/activity/EditActivity;->textColorPosition:I

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/model/TextVO;->setColorPosition(I)V

    .line 293
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/EditActivity;->mTextVO:Lcn/codemao/android/sketch/model/TextVO;

    const-string v1, "text"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "text:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/codemao/android/sketch/activity/EditActivity;->mEditText:Lcn/codemao/android/sketch/utils/CEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/codemao/android/sketch/utils/LogUtils;->d(Ljava/lang/String;)V

    const/16 v0, 0x4d2

    .line 295
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 296
    invoke-virtual {p0}, Lcn/codemao/android/sketch/activity/EditActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 278
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/EditActivity;->mEditText:Lcn/codemao/android/sketch/utils/CEditText;

    invoke-static {p1}, Lcn/codemao/android/sketch/utils/SoftInputUtils;->openSoftInput(Landroid/view/View;)V

    const-string p1, "input_method"

    .line 279
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 280
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result p1

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/codemao/android/sketch/utils/LogUtils;->d(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 56
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    sget p1, Lcn/codemao/android/sketch/R$layout;->activity_edit:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 64
    new-instance p1, Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;

    invoke-direct {p1, p0}, Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcn/codemao/android/sketch/activity/EditActivity;->keyboardHeightProvider:Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;

    .line 65
    invoke-direct {p0}, Lcn/codemao/android/sketch/activity/EditActivity;->init()V

    .line 66
    invoke-direct {p0}, Lcn/codemao/android/sketch/activity/EditActivity;->setLastText()V

    .line 67
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/EditActivity;->mEditText:Lcn/codemao/android/sketch/utils/CEditText;

    new-instance v0, Lcn/codemao/android/sketch/activity/EditActivity$1;

    invoke-direct {v0, p0}, Lcn/codemao/android/sketch/activity/EditActivity$1;-><init>(Lcn/codemao/android/sketch/activity/EditActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 73
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/EditActivity;->mEditText:Lcn/codemao/android/sketch/utils/CEditText;

    new-instance v0, Lcn/codemao/android/sketch/activity/EditActivity$2;

    invoke-direct {v0, p0}, Lcn/codemao/android/sketch/activity/EditActivity$2;-><init>(Lcn/codemao/android/sketch/activity/EditActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 102
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/EditActivity;->mEditText:Lcn/codemao/android/sketch/utils/CEditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 103
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/EditActivity;->mEditText:Lcn/codemao/android/sketch/utils/CEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 344
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 345
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/EditActivity;->keyboardHeightProvider:Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;->close()V

    return-void
.end method

.method public onKeyboardHeightChanged(II)V
    .registers 6

    .line 307
    iget-boolean p2, p0, Lcn/codemao/android/sketch/activity/EditActivity;->isInit:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_a

    .line 308
    iput p1, p0, Lcn/codemao/android/sketch/activity/EditActivity;->hidePopBottom:I

    .line 309
    iput-boolean v0, p0, Lcn/codemao/android/sketch/activity/EditActivity;->isInit:Z

    goto :goto_1e

    .line 311
    :cond_a
    iget p2, p0, Lcn/codemao/android/sketch/activity/EditActivity;->keyBoardHeight:I

    if-gtz p2, :cond_1e

    iget p2, p0, Lcn/codemao/android/sketch/activity/EditActivity;->hidePopBottom:I

    if-le p1, p2, :cond_1e

    sub-int v1, p1, p2

    iget v2, p0, Lcn/codemao/android/sketch/activity/EditActivity;->screenHeight:I

    div-int/lit8 v2, v2, 0x4

    if-le v1, v2, :cond_1e

    sub-int p2, p1, p2

    .line 312
    iput p2, p0, Lcn/codemao/android/sketch/activity/EditActivity;->keyBoardHeight:I

    .line 315
    :cond_1e
    :goto_1e
    iget p2, p0, Lcn/codemao/android/sketch/activity/EditActivity;->hidePopBottom:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcn/codemao/android/sketch/activity/EditActivity;->screenHeight:I

    div-int/lit8 p2, p2, 0x4

    if-le p1, p2, :cond_3c

    .line 316
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/EditActivity;->rvTextColor:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_4e

    .line 317
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 318
    iget p2, p0, Lcn/codemao/android/sketch/activity/EditActivity;->keyBoardHeight:I

    invoke-virtual {p1, v0, v0, v0, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 319
    iget-object p2, p0, Lcn/codemao/android/sketch/activity/EditActivity;->rvTextColor:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4e

    .line 322
    :cond_3c
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/EditActivity;->rvTextColor:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_4e

    .line 323
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 324
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 325
    iget-object p2, p0, Lcn/codemao/android/sketch/activity/EditActivity;->rvTextColor:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4e
    :goto_4e
    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 332
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 333
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/EditActivity;->keyboardHeightProvider:Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;

    invoke-virtual {v0, p0}, Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcn/codemao/android/sketch/utils/KeyboardHeightObserver;)V

    return-void
.end method

.method protected onStop()V
    .registers 3

    .line 338
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 339
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/EditActivity;->keyboardHeightProvider:Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcn/codemao/android/sketch/utils/KeyboardHeightObserver;)V

    return-void
.end method
