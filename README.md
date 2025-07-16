# Tango Evals

Repositorio para reproducir las evaluaciones de *laleaderboard* con el modelo [**Tango-70b**](https://tangoia.com).

## Resultados

### Comparación con otros modelos en laleaderboard_es

<div class="table-container" style="overflow: auto; max-height: 600px; max-width: 100%; border: 1px solid #ccc; border-radius: 5px;">
<table style="min-width: 100%; border-collapse: collapse;">
<thead style="position: sticky; top: 0; background-color: #f5f5f5;">
<tr>
<th style="padding: 8px; border: 1px solid #ddd; white-space: nowrap;">Model</th>
<th style="padding: 8px; border: 1px solid #ddd; white-space: nowrap;">Average</th>
<th style="padding: 8px; border: 1px solid #ddd; white-space: nowrap;">AQuAS</th>
<th style="padding: 8px; border: 1px solid #ddd; white-space: nowrap;">Belebele Spa</th>
<th style="padding: 8px; border: 1px solid #ddd; white-space: nowrap;">ClinDiagnosES</th>
<th style="padding: 8px; border: 1px solid #ddd; white-space: nowrap;">ClinTreatES</th>
<th style="padding: 8px; border: 1px solid #ddd; white-space: nowrap;">COPA_es</th>
<th style="padding: 8px; border: 1px solid #ddd; white-space: nowrap;">Crows Pairs Spanish</th>
<th style="padding: 8px; border: 1px solid #ddd; white-space: nowrap;">EsCoLA</th>
<th style="padding: 8px; border: 1px solid #ddd; white-space: nowrap;">Fake News ES</th>
<th style="padding: 8px; border: 1px solid #ddd; white-space: nowrap;">HumorQA</th>
<th style="padding: 8px; border: 1px solid #ddd; white-space: nowrap;">MGSM_es</th>
<th style="padding: 8px; border: 1px solid #ddd; white-space: nowrap;">NoticIA</th>
<th style="padding: 8px; border: 1px solid #ddd; white-space: nowrap;">OffendES</th>
<th style="padding: 8px; border: 1px solid #ddd; white-space: nowrap;">OpenBookQA_es</th>
<th style="padding: 8px; border: 1px solid #ddd; white-space: nowrap;">PAWS-X_es</th>
<th style="padding: 8px; border: 1px solid #ddd; white-space: nowrap;">RagQuAS</th>
<th style="padding: 8px; border: 1px solid #ddd; white-space: nowrap;">SpaLawEx</th>
<th style="padding: 8px; border: 1px solid #ddd; white-space: nowrap;">TELEIA</th>
<th style="padding: 8px; border: 1px solid #ddd; white-space: nowrap;">WNLI ES</th>
<th style="padding: 8px; border: 1px solid #ddd; white-space: nowrap;">XL-Sum_es</th>
<th style="padding: 8px; border: 1px solid #ddd; white-space: nowrap;">XNLI_es</th>
<th style="padding: 8px; border: 1px solid #ddd; white-space: nowrap;">XQuAD_es</th>
<th style="padding: 8px; border: 1px solid #ddd; white-space: nowrap;">xStoryCloze_es</th>
<th style="padding: 8px; border: 1px solid #ddd; white-space: nowrap;">Precision</th>
</tr>
</thead>
<tbody>
<tr style="background-color: #fff3cd;">
<td style="padding: 8px; border: 1px solid #ddd;"><strong>Tango-70b</strong></td>
<td style="padding: 8px; border: 1px solid #ddd;"><strong>59.90</strong></td>
<td style="padding: 8px; border: 1px solid #ddd;">75.78</td>
<td style="padding: 8px; border: 1px solid #ddd;">92.00</td>
<td style="padding: 8px; border: 1px solid #ddd;">65.72</td>
<td style="padding: 8px; border: 1px solid #ddd;">63.43</td>
<td style="padding: 8px; border: 1px solid #ddd;">89.60</td>
<td style="padding: 8px; border: 1px solid #ddd;">55.96</td>
<td style="padding: 8px; border: 1px solid #ddd;">71.79</td>
<td style="padding: 8px; border: 1px solid #ddd;">76.57</td>
<td style="padding: 8px; border: 1px solid #ddd;">25.49</td>
<td style="padding: 8px; border: 1px solid #ddd;">32.40</td>
<td style="padding: 8px; border: 1px solid #ddd;">0.86</td>
<td style="padding: 8px; border: 1px solid #ddd;">72.64</td>
<td style="padding: 8px; border: 1px solid #ddd;">34.80</td>
<td style="padding: 8px; border: 1px solid #ddd;">70.95</td>
<td style="padding: 8px; border: 1px solid #ddd;">79.87</td>
<td style="padding: 8px; border: 1px solid #ddd;">51.26</td>
<td style="padding: 8px; border: 1px solid #ddd;">61.90</td>
<td style="padding: 8px; border: 1px solid #ddd;">77.46</td>
<td style="padding: 8px; border: 1px solid #ddd;">19.71</td>
<td style="padding: 8px; border: 1px solid #ddd;">52.37</td>
<td style="padding: 8px; border: 1px solid #ddd;">75.16</td>
<td style="padding: 8px; border: 1px solid #ddd;">74.72</td>
<td style="padding: 8px; border: 1px solid #ddd;">-</td>
</tr>
<tr>
<td style="padding: 8px; border: 1px solid #ddd;">google/gemma-2-9b-it</td>
<td style="padding: 8px; border: 1px solid #ddd;">33.62</td>
<td style="padding: 8px; border: 1px solid #ddd;">85.93</td>
<td style="padding: 8px; border: 1px solid #ddd;">86.22</td>
<td style="padding: 8px; border: 1px solid #ddd;">83.19</td>
<td style="padding: 8px; border: 1px solid #ddd;">81.42</td>
<td style="padding: 8px; border: 1px solid #ddd;">78.80</td>
<td style="padding: 8px; border: 1px solid #ddd;">17.96</td>
<td style="padding: 8px; border: 1px solid #ddd;">34.52</td>
<td style="padding: 8px; border: 1px solid #ddd;">62.94</td>
<td style="padding: 8px; border: 1px solid #ddd;">45.10</td>
<td style="padding: 8px; border: 1px solid #ddd;">0</td>
<td style="padding: 8px; border: 1px solid #ddd;">34.11</td>
<td style="padding: 8px; border: 1px solid #ddd;">64.52</td>
<td style="padding: 8px; border: 1px solid #ddd;">9.33</td>
<td style="padding: 8px; border: 1px solid #ddd;">27.60</td>
<td style="padding: 8px; border: 1px solid #ddd;">88.01</td>
<td style="padding: 8px; border: 1px solid #ddd;">30.53</td>
<td style="padding: 8px; border: 1px solid #ddd;">35.72</td>
<td style="padding: 8px; border: 1px solid #ddd;">52.11</td>
<td style="padding: 8px; border: 1px solid #ddd;">0</td>
<td style="padding: 8px; border: 1px solid #ddd;">24.28</td>
<td style="padding: 8px; border: 1px solid #ddd;">62.29</td>
<td style="padding: 8px; border: 1px solid #ddd;">35.01</td>
<td style="padding: 8px; border: 1px solid #ddd;">bfloat16</td>
</tr>
<tr>
<td style="padding: 8px; border: 1px solid #ddd;">google/gemma-2-9b</td>
<td style="padding: 8px; border: 1px solid #ddd;">32.97</td>
<td style="padding: 8px; border: 1px solid #ddd;">83.02</td>
<td style="padding: 8px; border: 1px solid #ddd;">83.26</td>
<td style="padding: 8px; border: 1px solid #ddd;">77.77</td>
<td style="padding: 8px; border: 1px solid #ddd;">80.93</td>
<td style="padding: 8px; border: 1px solid #ddd;">68.80</td>
<td style="padding: 8px; border: 1px solid #ddd;">13.59</td>
<td style="padding: 8px; border: 1px solid #ddd;">28.79</td>
<td style="padding: 8px; border: 1px solid #ddd;">16.00</td>
<td style="padding: 8px; border: 1px solid #ddd;">45.10</td>
<td style="padding: 8px; border: 1px solid #ddd;">4.80</td>
<td style="padding: 8px; border: 1px solid #ddd;">0.23</td>
<td style="padding: 8px; border: 1px solid #ddd;">66.33</td>
<td style="padding: 8px; border: 1px solid #ddd;">12.00</td>
<td style="padding: 8px; border: 1px solid #ddd;">24.70</td>
<td style="padding: 8px; border: 1px solid #ddd;">86.79</td>
<td style="padding: 8px; border: 1px solid #ddd;">5.88</td>
<td style="padding: 8px; border: 1px solid #ddd;">35.72</td>
<td style="padding: 8px; border: 1px solid #ddd;">4.23</td>
<td style="padding: 8px; border: 1px solid #ddd;">0</td>
<td style="padding: 8px; border: 1px solid #ddd;">29.76</td>
<td style="padding: 8px; border: 1px solid #ddd;">75.33</td>
<td style="padding: 8px; border: 1px solid #ddd;">47.98</td>
<td style="padding: 8px; border: 1px solid #ddd;"></td>
</tr>
<tr>
<td style="padding: 8px; border: 1px solid #ddd;">meta-llama/Meta-Llama-3.1-8B-Instruct</td>
<td style="padding: 8px; border: 1px solid #ddd;">30.23</td>
<td style="padding: 8px; border: 1px solid #ddd;">85.31</td>
<td style="padding: 8px; border: 1px solid #ddd;">83.56</td>
<td style="padding: 8px; border: 1px solid #ddd;">81.75</td>
<td style="padding: 8px; border: 1px solid #ddd;">73.40</td>
<td style="padding: 8px; border: 1px solid #ddd;">72.00</td>
<td style="padding: 8px; border: 1px solid #ddd;">6.03</td>
<td style="padding: 8px; border: 1px solid #ddd;">24.24</td>
<td style="padding: 8px; border: 1px solid #ddd;">60.14</td>
<td style="padding: 8px; border: 1px solid #ddd;">37.25</td>
<td style="padding: 8px; border: 1px solid #ddd;">0</td>
<td style="padding: 8px; border: 1px solid #ddd;">28.71</td>
<td style="padding: 8px; border: 1px solid #ddd;">57.00</td>
<td style="padding: 8px; border: 1px solid #ddd;">12.00</td>
<td style="padding: 8px; border: 1px solid #ddd;">33.20</td>
<td style="padding: 8px; border: 1px solid #ddd;">88.62</td>
<td style="padding: 8px; border: 1px solid #ddd;">19.33</td>
<td style="padding: 8px; border: 1px solid #ddd;">21.43</td>
<td style="padding: 8px; border: 1px solid #ddd;">32.39</td>
<td style="padding: 8px; border: 1px solid #ddd;">0</td>
<td style="padding: 8px; border: 1px solid #ddd;">25.30</td>
<td style="padding: 8px; border: 1px solid #ddd;">69.94</td>
<td style="padding: 8px; border: 1px solid #ddd;">35.54</td>
<td style="padding: 8px; border: 1px solid #ddd;">bfloat16</td>
</tr>
<tr>
<td style="padding: 8px; border: 1px solid #ddd;">Qwen/Qwen2.5-7B</td>
<td style="padding: 8px; border: 1px solid #ddd;">27.61</td>
<td style="padding: 8px; border: 1px solid #ddd;">85.37</td>
<td style="padding: 8px; border: 1px solid #ddd;">84.89</td>
<td style="padding: 8px; border: 1px solid #ddd;">79.25</td>
<td style="padding: 8px; border: 1px solid #ddd;">81.90</td>
<td style="padding: 8px; border: 1px solid #ddd;">62.00</td>
<td style="padding: 8px; border: 1px solid #ddd;">8.81</td>
<td style="padding: 8px; border: 1px solid #ddd;">20.72</td>
<td style="padding: 8px; border: 1px solid #ddd;">42.66</td>
<td style="padding: 8px; border: 1px solid #ddd;">45.10</td>
<td style="padding: 8px; border: 1px solid #ddd;">5.20</td>
<td style="padding: 8px; border: 1px solid #ddd;">3.93</td>
<td style="padding: 8px; border: 1px solid #ddd;">67.03</td>
<td style="padding: 8px; border: 1px solid #ddd;">10.67</td>
<td style="padding: 8px; border: 1px solid #ddd;">29.60</td>
<td style="padding: 8px; border: 1px solid #ddd;">90.43</td>
<td style="padding: 8px; border: 1px solid #ddd;">19.33</td>
<td style="padding: 8px; border: 1px solid #ddd;">14.29</td>
<td style="padding: 8px; border: 1px solid #ddd;">40.85</td>
<td style="padding: 8px; border: 1px solid #ddd;">0</td>
<td style="padding: 8px; border: 1px solid #ddd;">25.30</td>
<td style="padding: 8px; border: 1px solid #ddd;">80.05</td>
<td style="padding: 8px; border: 1px solid #ddd;">38.19</td>
<td style="padding: 8px; border: 1px solid #ddd;">bfloat16</td>
</tr>
<tr>
<td style="padding: 8px; border: 1px solid #ddd;">meta-llama/Meta-Llama-3.1-8B</td>
<td style="padding: 8px; border: 1px solid #ddd;">27.04</td>
<td style="padding: 8px; border: 1px solid #ddd;">83.02</td>
<td style="padding: 8px; border: 1px solid #ddd;">74.52</td>
<td style="padding: 8px; border: 1px solid #ddd;">80.71</td>
<td style="padding: 8px; border: 1px solid #ddd;">81.21</td>
<td style="padding: 8px; border: 1px solid #ddd;">62.00</td>
<td style="padding: 8px; border: 1px solid #ddd;">0</td>
<td style="padding: 8px; border: 1px solid #ddd;">11.53</td>
<td style="padding: 8px; border: 1px solid #ddd;">19.58</td>
<td style="padding: 8px; border: 1px solid #ddd;">45.10</td>
<td style="padding: 8px; border: 1px solid #ddd;">1.60</td>
<td style="padding: 8px; border: 1px solid #ddd;">2.60</td>
<td style="padding: 8px; border: 1px solid #ddd;">66.23</td>
<td style="padding: 8px; border: 1px solid #ddd;">13.07</td>
<td style="padding: 8px; border: 1px solid #ddd;">30.10</td>
<td style="padding: 8px; border: 1px solid #ddd;">90.69</td>
<td style="padding: 8px; border: 1px solid #ddd;">5.88</td>
<td style="padding: 8px; border: 1px solid #ddd;">0</td>
<td style="padding: 8px; border: 1px solid #ddd;">1.41</td>
<td style="padding: 8px; border: 1px solid #ddd;">0</td>
<td style="padding: 8px; border: 1px solid #ddd;">28.86</td>
<td style="padding: 8px; border: 1px solid #ddd;">74.38</td>
<td style="padding: 8px; border: 1px solid #ddd;">41.63</td>
<td style="padding: 8px; border: 1px solid #ddd;">bfloat16</td>
</tr>
<tr>
<td style="padding: 8px; border: 1px solid #ddd;">utter-project/EuroLLM-9B</td>
<td style="padding: 8px; border: 1px solid #ddd;">25.87</td>
<td style="padding: 8px; border: 1px solid #ddd;">83.10</td>
<td style="padding: 8px; border: 1px solid #ddd;">67.70</td>
<td style="padding: 8px; border: 1px solid #ddd;">72.24</td>
<td style="padding: 8px; border: 1px solid #ddd;">74.52</td>
<td style="padding: 8px; border: 1px solid #ddd;">70.40</td>
<td style="padding: 8px; border: 1px solid #ddd;">3.25</td>
<td style="padding: 8px; border: 1px solid #ddd;">18.29</td>
<td style="padding: 8px; border: 1px solid #ddd;">7.34</td>
<td style="padding: 8px; border: 1px solid #ddd;">42.48</td>
<td style="padding: 8px; border: 1px solid #ddd;">3.60</td>
<td style="padding: 8px; border: 1px solid #ddd;">0.19</td>
<td style="padding: 8px; border: 1px solid #ddd;">70.26</td>
<td style="padding: 8px; border: 1px solid #ddd;">17.07</td>
<td style="padding: 8px; border: 1px solid #ddd;">31.00</td>
<td style="padding: 8px; border: 1px solid #ddd;">83.11</td>
<td style="padding: 8px; border: 1px solid #ddd;">5.88</td>
<td style="padding: 8px; border: 1px solid #ddd;">14.29</td>
<td style="padding: 8px; border: 1px solid #ddd;">7.04</td>
<td style="padding: 8px; border: 1px solid #ddd;">0</td>
<td style="padding: 8px; border: 1px solid #ddd;">27.71</td>
<td style="padding: 8px; border: 1px solid #ddd;">76.92</td>
<td style="padding: 8px; border: 1px solid #ddd;">44.01</td>
<td style="padding: 8px; border: 1px solid #ddd;">bfloat16</td>
</tr>
<tr>
<td style="padding: 8px; border: 1px solid #ddd;">BSC-LT/salamandra-7b-instruct</td>
<td style="padding: 8px; border: 1px solid #ddd;">25.13</td>
<td style="padding: 8px; border: 1px solid #ddd;">84.13</td>
<td style="padding: 8px; border: 1px solid #ddd;">57.33</td>
<td style="padding: 8px; border: 1px solid #ddd;">80.38</td>
<td style="padding: 8px; border: 1px solid #ddd;">82.03</td>
<td style="padding: 8px; border: 1px solid #ddd;">62.00</td>
<td style="padding: 8px; border: 1px solid #ddd;">10.67</td>
<td style="padding: 8px; border: 1px solid #ddd;">7.68</td>
<td style="padding: 8px; border: 1px solid #ddd;">8.74</td>
<td style="padding: 8px; border: 1px solid #ddd;">0</td>
<td style="padding: 8px; border: 1px solid #ddd;">0</td>
<td style="padding: 8px; border: 1px solid #ddd;">19.38</td>
<td style="padding: 8px; border: 1px solid #ddd;">67.83</td>
<td style="padding: 8px; border: 1px solid #ddd;">14.93</td>
<td style="padding: 8px; border: 1px solid #ddd;">19.50</td>
<td style="padding: 8px; border: 1px solid #ddd;">88.78</td>
<td style="padding: 8px; border: 1px solid #ddd;">18.21</td>
<td style="padding: 8px; border: 1px solid #ddd;">21.43</td>
<td style="padding: 8px; border: 1px solid #ddd;">9.86</td>
<td style="padding: 8px; border: 1px solid #ddd;">0</td>
<td style="padding: 8px; border: 1px solid #ddd;">24.28</td>
<td style="padding: 8px; border: 1px solid #ddd;">58.31</td>
<td style="padding: 8px; border: 1px solid #ddd;">30.38</td>
<td style="padding: 8px; border: 1px solid #ddd;">bfloat16</td>
</tr>
<tr>
<td style="padding: 8px; border: 1px solid #ddd;">utter-project/EuroLLM-9B-Instruct</td>
<td style="padding: 8px; border: 1px solid #ddd;">24.46</td>
<td style="padding: 8px; border: 1px solid #ddd;">84.81</td>
<td style="padding: 8px; border: 1px solid #ddd;">69.78</td>
<td style="padding: 8px; border: 1px solid #ddd;">80.90</td>
<td style="padding: 8px; border: 1px solid #ddd;">77.76</td>
<td style="padding: 8px; border: 1px solid #ddd;">72.40</td>
<td style="padding: 8px; border: 1px solid #ddd;">11.20</td>
<td style="padding: 8px; border: 1px solid #ddd;">24.57</td>
<td style="padding: 8px; border: 1px solid #ddd;">38.11</td>
<td style="padding: 8px; border: 1px solid #ddd;">26.80</td>
<td style="padding: 8px; border: 1px solid #ddd;">0</td>
<td style="padding: 8px; border: 1px solid #ddd;">26.80</td>
<td style="padding: 8px; border: 1px solid #ddd;">61.91</td>
<td style="padding: 8px; border: 1px solid #ddd;">13.60</td>
<td style="padding: 8px; border: 1px solid #ddd;">26.10</td>
<td style="padding: 8px; border: 1px solid #ddd;">90.79</td>
<td style="padding: 8px; border: 1px solid #ddd;">13.73</td>
<td style="padding: 8px; border: 1px solid #ddd;">21.43</td>
<td style="padding: 8px; border: 1px solid #ddd;">29.58</td>
<td style="padding: 8px; border: 1px solid #ddd;">0</td>
<td style="padding: 8px; border: 1px solid #ddd;">24.82</td>
<td style="padding: 8px; border: 1px solid #ddd;">58.48</td>
<td style="padding: 8px; border: 1px solid #ddd;">33.69</td>
<td style="padding: 8px; border: 1px solid #ddd;">bfloat16</td>
</tr>
<tr>
<td style="padding: 8px; border: 1px solid #ddd;">CohereForAI/aya-expanse-8b</td>
<td style="padding: 8px; border: 1px solid #ddd;">24.30</td>
<td style="padding: 8px; border: 1px solid #ddd;">83.45</td>
<td style="padding: 8px; border: 1px solid #ddd;">77.78</td>
<td style="padding: 8px; border: 1px solid #ddd;">78.88</td>
<td style="padding: 8px; border: 1px solid #ddd;">72.24</td>
<td style="padding: 8px; border: 1px solid #ddd;">68.00</td>
<td style="padding: 8px; border: 1px solid #ddd;">9.21</td>
<td style="padding: 8px; border: 1px solid #ddd;">15.53</td>
<td style="padding: 8px; border: 1px solid #ddd;">19.58</td>
<td style="padding: 8px; border: 1px solid #ddd;">0</td>
<td style="padding: 8px; border: 1px solid #ddd;">0</td>
<td style="padding: 8px; border: 1px solid #ddd;">0.46</td>
<td style="padding: 8px; border: 1px solid #ddd;">62.23</td>
<td style="padding: 8px; border: 1px solid #ddd;">8.53</td>
<td style="padding: 8px; border: 1px solid #ddd;">33.90</td>
<td style="padding: 8px; border: 1px solid #ddd;">89.02</td>
<td style="padding: 8px; border: 1px solid #ddd;">13.73</td>
<td style="padding: 8px; border: 1px solid #ddd;">50.00</td>
<td style="padding: 8px; border: 1px solid #ddd;">38.03</td>
<td style="padding: 8px; border: 1px solid #ddd;">0</td>
<td style="padding: 8px; border: 1px solid #ddd;">15.79</td>
<td style="padding: 8px; border: 1px solid #ddd;">77.98</td>
<td style="padding: 8px; border: 1px solid #ddd;">34.08</td>
<td style="padding: 8px; border: 1px solid #ddd;">float16</td>
</tr>
<tr>
<td style="padding: 8px; border: 1px solid #ddd;">BSC-LT/salamandra-7b</td>
<td style="padding: 8px; border: 1px solid #ddd;">24.04</td>
<td style="padding: 8px; border: 1px solid #ddd;">81.93</td>
<td style="padding: 8px; border: 1px solid #ddd;">22.07</td>
<td style="padding: 8px; border: 1px solid #ddd;">74.68</td>
<td style="padding: 8px; border: 1px solid #ddd;">78.11</td>
<td style="padding: 8px; border: 1px solid #ddd;">62.80</td>
<td style="padding: 8px; border: 1px solid #ddd;">5.37</td>
<td style="padding: 8px; border: 1px solid #ddd;">21.46</td>
<td style="padding: 8px; border: 1px solid #ddd;">19.58</td>
<td style="padding: 8px; border: 1px solid #ddd;">45.10</td>
<td style="padding: 8px; border: 1px solid #ddd;">2.40</td>
<td style="padding: 8px; border: 1px solid #ddd;">0.17</td>
<td style="padding: 8px; border: 1px solid #ddd;">57.27</td>
<td style="padding: 8px; border: 1px solid #ddd;">10.40</td>
<td style="padding: 8px; border: 1px solid #ddd;">18.60</td>
<td style="padding: 8px; border: 1px solid #ddd;">87.78</td>
<td style="padding: 8px; border: 1px solid #ddd;">5.88</td>
<td style="padding: 8px; border: 1px solid #ddd;">0</td>
<td style="padding: 8px; border: 1px solid #ddd;">15.49</td>
<td style="padding: 8px; border: 1px solid #ddd;">0</td>
<td style="padding: 8px; border: 1px solid #ddd;">26.15</td>
<td style="padding: 8px; border: 1px solid #ddd;">69.21</td>
<td style="padding: 8px; border: 1px solid #ddd;">46.92</td>
</tr>
</tbody>
</table>
</div>

**Notas:**
- **Average**: Media no ponderada de todas las métricas válidas de todas las tareas (46 valores totales)
- **Promedio (Solo Accuracy)**: Media no ponderada de todas las métricas `acc*` (22 valores de accuracy)
- **Promedio (Todas las métricas)**: Media no ponderada de todas las métricas válidas de todas las tareas (46 valores totales)
- Los resultados de otros modelos provienen de [laleaderboard_es](https://huggingface.co/spaces/laleaderboard/laleaderboard_es)
- Tango-70b destaca especialmente en: **Average (59.90)**, Belebele Spa (92.00), COPA_es (89.60), EsCoLA (71.79), RagQuAS (79.87), SpaLawEx (51.26), y XL-Sum_es (19.71)
- Tango-70b supera significativamente al segundo mejor modelo (google/gemma-2-9b-it con 33.62) por **26.28 puntos porcentuales**



### Resultantes del proceso de evaluación (`.json` y `.log`)
Podés encontrar los resultados del proceso de evaluación en `./tango-evals` y en `./logs` 

## Reproducir los resultados

1. Creá y activá un virtual-env de Python ≥ 3.9.  
   ```
   python -m venv .venv
   source .venv/bin/activate
   ```

2. Instalá dependencias de lm-evaluation-harness en modo *editable*:

   ```bash
   pip install -e .
   ```

3. Logeate en Hugging Face

   ```bash
   huggingface-cli login
   ```

4. Ejecutá el script de evaluación:

   ```bash
   chmod +x run_laleaderboard_es.sh
   ./run_laleaderboard_es.sh
   ```

5. Ejecutá el script de agregación de resultados
   ```bash
   python aggregate_laleaderboard_es_acc.py
   ```

El script `run_laleaderboard_es.sh` recorre cada sub-tarea definida en
`lm_eval/tasks/laleaderboard/laleaderboard_es.yaml`, ejecutando **una a la vez**. Apenas una tarea termina se escribe el archivo `results_<timestamp>.json`, por lo que si el proceso se interrumpe conservás todo lo ya completado.


El script `aggregate_laleaderboard_es_acc.py` lee todos los archivos `results_*.json` en `tango-evals/` y calcula:
- Media de métricas de accuracy únicamente
- Media de todas las métricas (primera métrica de cada tarea)



## Dónde quedan los resultados

Los resultados se guardan en el directorio indicado en `OUTPUT_DIR` al principio del script (por defecto `./tango-evals`). Ejemplo de estructura:

```
<OUTPUT_DIR>/
  └── <model-name-sanitised>/
        ├── results_2024-05-29T14-52-17.json   # métricas de una tarea
        └── …                                  # más tareas / timestamps
```

Los logs de consola por tarea se almacenan en `./logs/` junto al script.

## Reanudar o volver a correr

• El script detecta archivos `results_*<task>.json` existentes y salta esas tareas.  
• Podés ajustar `MODEL_ARGS`, tamaño de batch, dispositivo, etc. editando el encabezado del script.

## Hardware

– Hardware usado: 4 × NVIDIA RTX 3090, 256 GB RAM.  
– Ajustá batch size o paralelismo según tu GPU.

